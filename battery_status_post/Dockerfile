FROM ubuntu:latest
RUN "apt-get update -y"
RUN "apt-get upgrade -y"
RUN "apt-get install -y acpi"
COPY battery_post.sh .
CMD sh ./battery_post.sh
