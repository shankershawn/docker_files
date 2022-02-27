FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y curl
RUN curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash
RUN apt-get install -y speedtest
CMD speedtest
