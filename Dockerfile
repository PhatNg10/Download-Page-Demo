FROM tomcat:11-jdk17-temurin
COPY target/DownloadPageDemo-1.0-SNAPSHOT.war
CMD ["catalina.sh", "run"]