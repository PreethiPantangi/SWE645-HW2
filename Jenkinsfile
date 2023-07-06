pipeline {
    agent any
    environment {
        DOCKERHUB_PASS = credentials('docker-pass')
    }
    stages {
        stage("Build and create") {
            steps {
                script {
                    checkout scm
                    sh 'ls'
                    sh "cd src/main/webapp && jar -cvf StudentSurveyForm.war *"
                    DATE_TAG = java.time.LocalDate.now()
                    DATETIME_TAG = java.time.LocalDateTime.now()
                    sh "echo ${DATETIME_TAG}"
                    sh "sudo docker login -u preethipantangi -p ${DOCKERHUB_PASS}"
                    sh "sudo docker build -t preethipantangi/studentsurvey:${BUILD_TIMESTAMP} ."
                }
            }
        }
        stage("Pushing Image") {
            steps {
                script {
                    sh "sudo docker push preethipantangi/studentsurvey:${BUILD_TIMESTAMP}"
                }
            }
        }
        
    }
}