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

        stage('Clean Workspace') {
            steps {
                echo 'Cleaning Jenkins workspace...'
                deleteDir()
            }
        }

        stage('Checkout') {
            steps {
                deleteDir()

                git branch: 'main',
                    url: 'https://github.com/Brigghin/personal-aks-platform.git'

                sh '''
                echo "Latest Commit:"
                git log -1 --oneline

                echo
                echo "App Contents:"
                ls -la app
                '''
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
                        set -e

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

                        echo "Building image from:"
                        echo "$WORKSPACE/app"

                        echo
                        echo "Build number:"
                        echo "$BUILD_NUMBER"

                        echo
                        echo "Building and pushing image..."

                        /kaniko/executor \
                          --context=$WORKSPACE/app \
                          --dockerfile=$WORKSPACE/app/Dockerfile \
                          --destination=brigghinwebsiteacr.azurecr.io/personal-website:${BUILD_NUMBER} \
                          --destination=brigghinwebsiteacr.azurecr.io/personal-website:latest \
                          --cache=false

                        echo "Build completed."
                        '''
                    }
                }
            }
        }
    }

    post {

        success {
            echo 'Build, push, and verification succeeded.'
        }

        failure {
            echo 'Pipeline failed.'
        }

        always {
            echo "Build Number: ${BUILD_NUMBER}"
            echo "Image: brigghinwebsiteacr.azurecr.io/personal-website:${BUILD_NUMBER}"
        }
    }
}