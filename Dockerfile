FROM tomcat:9.0.65-jdk17-temurin

# Build the WAR first: mvn -B package
COPY target/shopping-cart-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
