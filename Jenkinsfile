pipeline {
    agent any

    stages {

        stage('Verify Repository') {
            steps {
                echo 'Repository successfully pulled!'
            }
        }

        stage('Check Docker') {
            steps {
                sh 'docker version'
            }
        }

    }
}