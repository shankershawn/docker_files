FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y curl
RUN curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash
RUN apt-get install -y speedtest
CMD speedtest --accept-license
