FROM shankershawn/kafka:latest
WORKDIR kafka_2.12-3.0.0
ENTRYPOINT ["bin/zookeeper-server-start.sh", "config/zookeeper.properties"]
#RUN ["bin/kafka-topics.sh", "--partitions=2", "--replication-factor=1", "--create", "--topic=temp-topic1", "--bootstrap-server=localhost:9092"]

