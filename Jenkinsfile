pipeline {
    agent any

    stages {
        stage('Check Docker') {
            steps {
                bat 'docker --version'
            }
        }

        stage('Build Backend') {
            steps {
                bat 'docker build -t devops-backend ./backend'
            }
        }

        stage('Build Frontend') {
            steps {
                bat 'docker build -t devops-frontend ./frontend'
            }
        }
    }
}
