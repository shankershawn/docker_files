FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y maven git
RUN git clone https://github.com/shankershawn/raspi-alarm-common.git
RUN git clone https://github.com/shankershawn/raspi-alarm-client.git
WORKDIR raspi-alarm-common/
RUN mvn -e clean install
WORKDIR ../raspi-alarm-client/
RUN mvn -e clean install
CMD ["java", "-jar", "target/raspi-alarm-client-0.0.1-SNAPSHOT.jar", "--spring.kafka.bootstrap-servers=129.154.37.114:9092", "--spring.kafka.producer.key-serializer=org.apache.kafka.common.serialization.StringSerializer", "--spring.kafka.producer.value-serializer=com.shankarsan.raspialarm.client.serialization.MessageSerializer", "--battery-alarm-service.ring-battery-alarm.pin=5"]
