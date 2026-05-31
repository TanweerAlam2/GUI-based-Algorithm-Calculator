pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git 'https://github.com/TanweerAlam2/GUI-based-Algorithm-Calculator.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t algorithm-calculator .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker stop algorithm-calculator || true
                docker rm algorithm-calculator || true
                docker run -dit --name algorithm-calculator algorithm-calculator
                '''
            }
        }
    }
}
