pipeline {
    agent any
    triggers {
        githubPush() // Trigger on GitHub push events
    }
    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t express-app-0001:v1.0 .'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/deployment.yaml'
            }
        }
    }
}
