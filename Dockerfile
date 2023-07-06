FROM tomcat:10.1-jdk17
EXPOSE 8080
COPY ./StudentSurveyForm.war /usr/local/tomcat/webapps