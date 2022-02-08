FROM shankershawn/kafka:latest
ARG kafka_version
WORKDIR kafka_2.13-$kafka_version
ENTRYPOINT ["bin/zookeeper-server-start.sh", "config/zookeeper.properties"]
#RUN ["bin/kafka-topics.sh", "--partitions=2", "--replication-factor=1", "--create", "--topic=temp-topic1", "--bootstrap-server=localhost:9092"]

