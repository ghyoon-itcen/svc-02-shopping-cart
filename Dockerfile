FROM tomcat:9.0.121-jdk17-temurin

# Patch OS packages (curl, openssl, glibc, ...) with the latest Ubuntu security updates
RUN apt-get update \
 && apt-get upgrade -y \
 && rm -rf /var/lib/apt/lists/*

# Build the WAR first: mvn -B package
COPY target/shopping-cart-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
