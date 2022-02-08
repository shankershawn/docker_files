FROM ubuntu:latest
RUN apt-get update -y;\
apt-get install -y curl;\
curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash;\
apt-get install -y speedtest;
CMD speedtest
