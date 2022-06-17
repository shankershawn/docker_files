#!/bin/bash
#DOCKER_BUILDKIT=1 docker buildx build --pull --platform linux/arm64,linux/arm/v7,linux/amd64 -t shankershawn/raspi-alarm-server:latest --push .
docker build --pull -t shankershawn/raspi-alarm-server:armv7 .
