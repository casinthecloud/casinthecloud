FROM openjdk:8u121

#curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.2.2-amd64.deb
#sudo dpkg -i filebeat-5.2.2-amd64.deb

#COPY ./filebeat/filebeat.yml /etc/filebeat/filebeat.yml
#RUN sudo /etc/init.d/filebeat start

COPY ./target/cas-server.war /target/
WORKDIR /target

EXPOSE 8080
CMD ["java", "-jar", "cas-server.war"]
