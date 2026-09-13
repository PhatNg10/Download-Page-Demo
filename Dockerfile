FROM tomcat:10.1-jdk17-temurin
COPY target/SessionDemo-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh", "run"]