pipeline {
    agent any
    environment {
        DOCKERHUB_PASS = credentials('docker-pass')
    }
    stages {
        stage("Build and create") {
            steps {
                script {
<<<<<<< HEAD
                    checkout scm
                    sh 'ls'
                    sh "cd src/main/webapp && jar -cvf StudentSurveyForm.war *"
                    DATE_TAG = java.time.LocalDate.now()
                    DATETIME_TAG = java.time.LocalDateTime.now()
                    sh "echo ${DATETIME_TAG}"
                    sh "sudo docker login -u preethipantangi -p ${DOCKERHUB_PASS}"
                    sh "sudo docker build -t preethipantangi/studentsurvey:${BUILD_TIMESTAMP} ."
=======
                    withCredentials([usernamePassword(credentialsId: 'DOCKERHUB_PASS', passwordVariable: 'C_PASS', usernameVariable: 'C_USER')]) {
                        checkout scm
                        sh "rm -rf *.war"
                        sh 'jar -cvf StudentSurveyForm.war *'
                        sh 'echo ${BUILDVERSION}'
                        println(C_PASS+" "+C_USER)
                        sh 'docker login -u preethipantangi -p ${C_PASS}'
                        sh 'docker build -t preethipantangi/studentsurvey:1.0 .'
                    }
>>>>>>> 819f66ed7b43d27606b646f130c689639b80f7ed
                }
            }
        }
        stage("Pushing Image") {
            steps {
                script {
<<<<<<< HEAD
                    sh "sudo docker push preethipantangi/studentsurvey:${BUILD_TIMESTAMP}"
                }
            }
        }
        
=======
                    sh "docker push preethipantangi/studentsurvey:1.0"
                }
            }
        }
        stage("Deploying to Rancher") {
            steps {
                sh 'kubectl set image deployment/studentsurvey studentsurvey=preethipantangi/studentsurvey:1.0 -n studentsurvey'
            }
        }
>>>>>>> 819f66ed7b43d27606b646f130c689639b80f7ed
    }
}
