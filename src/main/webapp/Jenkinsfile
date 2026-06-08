pipeline {
agent any


tools {
    maven 'Maven'
}

environment {
    SCANNER_HOME = tool 'sonar-scanner'
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
            sh 'mvn clean package'
        }
    }

    stage('SonarQube Analysis') {
        steps {
            withSonarQubeEnv('SonarQube') {
                sh """
                ${SCANNER_HOME}/bin/sonar-scanner
                """
            }
        }
    }

    stage('Quality Gate') {
        steps {
            timeout(time: 5, unit: 'MINUTES') {
                waitForQualityGate abortPipeline: true
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
