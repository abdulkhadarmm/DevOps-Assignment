pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Backend Image') {
            steps {
                bat 'docker build -t devops-backend ./backend'
            }
        }

        stage('Build Frontend Image') {
            steps {
                bat 'docker build -t devops-frontend ./frontend'
            }
        }

        stage('Stop Old Containers') {
            steps {
                bat 'docker-compose down || exit 0'
            }
        }

        stage('Deploy Containers') {
            steps {
                bat 'docker-compose up -d'
            }
        }

        stage('Verify Running Containers') {
            steps {
                bat 'docker ps'
            }
        }
    }
}