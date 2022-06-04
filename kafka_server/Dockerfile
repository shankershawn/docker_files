FROM shankershawn/kafka:latest
ARG kafka_version
WORKDIR kafka_2.13-$kafka_version
#RUN ["sed", "-i", "s/zookeeper.connect=localhost:2181/zookeeper.connect=$KAFKA_ZOOKEEPER_CONNECT/g", "config/server.properties"]
#RUN ["sed", "-i", "s|#advertised.listeners=PLAINTEXT://your.host.name:9092|advertised.listeners=$KAFKA_ADVERTISED_LISTENERS|g", "config/server.properties"]
#RUN sed -i "s|zookeeper.connect=localhost:2181|zookeeper.connect=$KAFKA_ZOOKEEPER_CONNECT|g" config/server.properties
#RUN sed -i "s|#advertised.listeners=PLAINTEXT://your.host.name:9092|advertised.listeners=$KAFKA_ADVERTISED_LISTENERS|g" config/server.properties
COPY start.sh ./
RUN chmod 777 start.sh
#RUN sh ./test.sh
#ENTRYPOINT ["bin/kafka-server-start.sh", "config/server.properties"]
ENTRYPOINT ["./start.sh"]
#RUN ["bin/kafka-topics.sh", "--partitions=2", "--replication-factor=1", "--create", "--topic=temp-topic1", "--bootstrap-server=localhost:9092"]

