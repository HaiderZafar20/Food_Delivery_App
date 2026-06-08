pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/HaiderZafar20/Food_Delivery_App.git'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    bat 'mvn sonar:sonar'
                }
            }
        }

    }

    post {
        success {
            echo 'Build and SonarQube checks passed.'
        }

        failure {
            echo 'Build failed or Quality Gate failed.'
        }
    }
}