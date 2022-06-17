#FROM ubuntu:latest
FROM navikey/raspbian-bullseye:latest
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y default-jre pigpio
COPY raspi-alarm-server-0.0.1-SNAPSHOT.jar ./
ENTRYPOINT java -jar raspi-alarm-server-0.0.1-SNAPSHOT.jar
