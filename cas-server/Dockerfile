FROM openjdk:8u121

RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.2.2-amd64.deb
RUN dpkg -i filebeat-5.2.2-amd64.deb

COPY ./filebeat.yml /etc/filebeat/filebeat.yml

COPY ./target/cas-server.war /target/

EXPOSE 8080
CMD ["/etc/init.d/filebeat", "start", ";", "java", "-jar", "-Xms512m", "-Xmx512m", "target/cas-server.war"]
