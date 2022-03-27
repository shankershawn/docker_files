FROM ubuntu:latest
RUN "apt=get update -y && apt-get upgrade -y && apt-get install -y acpi"
COPY battery_post.sh .
CMD sh ./battery_post.sh
