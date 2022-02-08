FROM shankershawn/kafka:latest
ARG kafka_version
WORKDIR kafka_2.13-$kafka_version
RUN ["sed", "-i", "s/zookeeper.connect=localhost:2181/zookeeper.connect=zookeeper:2181/g", "config/server.properties"]
RUN ["sed", "-i", "s|#advertised.listeners=PLAINTEXT://your.host.name:9092|advertised.listeners=PLAINTEXT://localhost:9092|g", "config/server.properties"]
ENTRYPOINT ["bin/kafka-server-start.sh", "config/server.properties"]
#RUN ["bin/kafka-topics.sh", "--partitions=2", "--replication-factor=1", "--create", "--topic=temp-topic1", "--bootstrap-server=localhost:9092"]

