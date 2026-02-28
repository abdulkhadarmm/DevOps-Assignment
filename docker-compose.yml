pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Deploy') {
            steps {
                bat 'docker-compose down'
                bat 'docker-compose up -d --build'
            }
        }

        stage('Verify') {
            steps {
                bat 'docker ps'
            }
        }
    }
}