pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the repository from GitHub
                git 'https://github.com/johnzama/devops-resume.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image using the Dockerfile
                script {
                    sh 'docker build -t resume-website .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                // Run the Docker container on port 8080
                script {
                    sh 'docker run -d -p 8080:80 resume-website'
                }
            }
        }
    }

    post {
        always {
            // Clean up the workspace after the pipeline completes
            cleanWs()
        }
    }
}

