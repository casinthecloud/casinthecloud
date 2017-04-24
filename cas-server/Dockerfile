FROM openjdk:8u121-jdk-alpine

COPY ./config/*.* /etc/cas/config
COPY ./target/cas-server.war /war/
WORKDIR /logs

EXPOSE 8080
CMD ["java", "-jar", "-Xms512m", "-Xmx512m", "../war/cas-server.war"]
