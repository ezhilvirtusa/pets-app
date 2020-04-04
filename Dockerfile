FROM tomcat:latest
COPY target/pets-app.war /usr/local/tomcat/webapps
