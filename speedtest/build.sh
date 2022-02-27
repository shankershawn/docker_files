#!/bin/bash
DOCKER_BUILDKIT=1 docker buildx build --no-cache --pull --platform linux/arm/v7,linux/amd64 -t shankershawn/speedtest:latest --push .
