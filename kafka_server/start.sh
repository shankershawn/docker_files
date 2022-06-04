#!/bin/bash
echo $KAFKA_ZOOKEEPER_CONNECT
echo $KAFKA_ADVERTISED_LISTENERS
sed -i "s|zookeeper.connect=localhost:2181|zookeeper.connect=$KAFKA_ZOOKEEPER_CONNECT|g" config/server.properties
sed -i "s|#advertised.listeners=PLAINTEXT://your.host.name:9092|advertised.listeners=$KAFKA_ADVERTISED_LISTENERS|g" config/server.properties
#sed -i "s|#listeners=PLAINTEXT://:9092|listeners=$KAFKA_ADVERTISED_LISTENERS|g" config/server.properties
#listeners=PLAINTEXT://:9092
sh bin/kafka-server-start.sh config/server.properties
