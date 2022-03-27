FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y acpi curl
COPY battery_post.sh .
CMD battery_post.sh
ENTRYPOINT sh
