FROM shankershawn/kafka:latest
ARG kafka_version
WORKDIR kafka_2.13-$kafka_version
COPY start.sh ./
RUN chmod 777 start.sh
ENTRYPOINT ["./start.sh"]

