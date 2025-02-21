pipeline {
    agent any

    tools {
        maven 'Maven' // Use the Maven tool configured in Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'github-credentials', branch: 'main', url: 'https://github.com/MMoncy01/COMP367WebApp.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    try {
                        bat 'mvn clean package'
                    } catch (Exception e) {
                        error "Build failed: ${e.message}"
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
            }
        }
    }

    post {
        success {
            echo 'Build and Deployment successful!'
            archiveArtifacts artifacts: '**/target/*.war', fingerprint: true
        }
        failure {
            echo 'Build failed! Check logs for details.'
        }
    }
}
