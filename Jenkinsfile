pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Clone GitHub repository
                git 'https://github.com/your-repo/static-website.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build Docker image
                script {
                    dockerImage = docker.build("your-dockerhub-username/static-website:${env.BUILD_ID}")
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                // Push Docker image to Docker Hub
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-credentials-id') {
                        dockerImage.push()
                    }
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                // Deploy to AWS EKS Kubernetes cluster
                sh 'kubectl apply -f k8s/deployment.yaml'
            }
        }
    }
}
