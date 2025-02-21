pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'github-credentials', branch: 'main', url: 'https://github.com/MMoncy01/COMP367WebApp.git'
            }
        }
        stage('Build') {
            steps {
                bat 'mvn clean package'

            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
            }
        }
    }
}
