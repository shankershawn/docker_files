#!/bin/bash
if [ "$1" = "" ]; then
	echo "Usage ./build.sh <kafka_Version>"
	exit 1
fi
DOCKER_BUILDKIT=1 docker buildx build --platform linux/arm64,linux/arm/v7,linux/amd64 --build-arg kafka_version=$1 -t shankershawn/kafka-zookeeper:latest --push .
