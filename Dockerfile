FROM tomcat:10.1-jdk17

LABEL maintainer="spantang@gmu.edu"

ADD StudentSurveyForm.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]