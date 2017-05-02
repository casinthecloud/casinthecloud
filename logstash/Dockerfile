FROM docker.elastic.co/logstash/logstash:5.3.0

COPY ./jvm.options /usr/share/logstash/config/

COPY ./logstash.conf /usr/share/logstash/pipeline/

COPY ./patterns/javaclass /usr/share/logstash/patterns/