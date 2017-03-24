FROM openjdk:8u121
COPY ./target/cas-management.war /target/
WORKDIR /target
EXPOSE 8081
CMD ["java", "-jar", "cas-management.war"]
