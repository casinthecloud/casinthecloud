FROM openjdk:8u121
COPY ./target/cas-server.war /target/
WORKDIR /target
EXPOSE 8080
CMD ["java", "-jar", "cas-server.war"]
