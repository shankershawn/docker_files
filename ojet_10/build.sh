#!/bin/bash
if [ "$1" = "" ]; then
	echo "Usage ./build.sh <ojet_Version>"
	exit 1
fi
DOCKER_BUILDKIT=1 docker buildx build --platform linux/arm64,linux/arm/v7,linux/amd64 --build-arg ojet_version=$1 -t shankershawn/ojet:$1 --push .
