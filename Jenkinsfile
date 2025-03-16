pipeline {
    agent any
    stages {
        stage('Clone Repo') { steps { git 'https://github.com/nruangprasert/devops-project-bangkok-0001.git' } }
        stage('Build Docker Image') { steps { sh 'docker build -t express-app-0001:v1.0 .' } }
        stage('Deploy to Kubernetes') { steps { sh 'kubectl apply -f k8s/deployment.yaml' } }
    }
}
