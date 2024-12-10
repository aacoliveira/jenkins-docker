pipeline {
    agent { docker { image 'python:3.13.0-alpine3.20' } }
    stages {
        stage('show-python-version') {
            steps {
                sh 'python --version'
            }
        }
    }
}