FROM ubuntu:latest
ARG kafka_version
RUN apt-get update -y;\
apt-get install -y sed curl openjdk-11-jre-headless;\
curl -o kafka_2.13-$kafka_version.tgz https://archive.apache.org/dist/kafka/$kafka_version/kafka_2.13-$kafka_version.tgz;\
tar -xvf kafka_2.13-$kafka_version.tgz;\
rm kafka_2.13-$kafka_version.tgz

