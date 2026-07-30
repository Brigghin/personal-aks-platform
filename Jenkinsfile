pipeline {
    agent {
        kubernetes {
            yaml '''
apiVersion: v1
kind: Pod
spec:
  containers:
  - name: jnlp
    image: brigghinwebsiteacr.azurecr.io/jenkins-agent-devops:v7
  - name: kaniko
    image: gcr.io/kaniko-project/executor:v1.23.2-debug
    command:
    - /busybox/cat
    tty: true
'''
        }
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Brigghin/personal-aks-platform.git'
            }
        }

        stage('Build and Push') {
            steps {
                container('kaniko') {
                    withCredentials([
                        usernamePassword(
                            credentialsId: 'acr-creds',
                            usernameVariable: 'ACR_USER',
                            passwordVariable: 'ACR_PASS'
                        )
                    ]) {

                        sh '''
                        mkdir -p /kaniko/.docker

                        AUTH=$(echo -n "$ACR_USER:$ACR_PASS" | base64 | tr -d '\\n')

                        cat > /kaniko/.docker/config.json <<EOF
{
  "auths": {
    "brigghinwebsiteacr.azurecr.io": {
      "auth": "$AUTH"
    }
  }
}
EOF

                        echo "Building image..."

                        /kaniko/executor \
                          --context=$WORKSPACE/app \
                          --dockerfile=$WORKSPACE/app/Dockerfile \
                          --destination=brigghinwebsiteacr.azurecr.io/personal-website:${BUILD_NUMBER} \
                          --destination=brigghinwebsiteacr.azurecr.io/personal-website:latest

                        echo "Build completed."
                        '''
                    }
                }
            }
        }

        stage('Deploy to AKS') {
            steps {
                sh '''
                set -e

                echo "Updating deployment..."

                kubectl set image deployment/personal-website-v3 \
                  personal-website=brigghinwebsiteacr.azurecr.io/personal-website:${BUILD_NUMBER} \
                  -n personal-website

                echo "Waiting for rollout..."

                if ! kubectl rollout status deployment/personal-website-v3 \
                  -n personal-website \
                  --timeout=300s
                then
                    echo "Rollout failed. Rolling back..."

                    kubectl rollout undo deployment/personal-website-v3 \
                      -n personal-website

                    echo "Waiting for rollback to complete..."

                    kubectl rollout status deployment/personal-website-v3 \
                      -n personal-website \
                      --timeout=300s

                    exit 1
                fi

                echo "Deployment successful."
                '''
            }
        }

        stage('Deployment Verification') {
            steps {
                sh '''
                echo "Current deployment image:"

                kubectl get deployment personal-website-v3 \
                  -n personal-website \
                  -o jsonpath="{.spec.template.spec.containers[0].image}"

                echo
                echo

                echo "Pods:"

                kubectl get pods -n personal-website

                echo
                echo

                echo "Rollout History:"

                kubectl rollout history deployment/personal-website-v3 \
                  -n personal-website
                '''
            }
        }
    }

    post {

        success {
            echo 'Build, push, deployment, and verification succeeded.'
        }

        failure {
            echo 'Pipeline failed. If deployment failed, rollback was attempted automatically.'
        }

        always {
            echo "Build Number: ${BUILD_NUMBER}"
            echo "Image: brigghinwebsiteacr.azurecr.io/personal-website:${BUILD_NUMBER}"
        }
    }
}