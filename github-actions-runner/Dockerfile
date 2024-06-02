FROM mcr.microsoft.com/dotnet/runtime-deps:6.0-jammy
RUN rm -f /etc/apt/sources.list.d/archive_uri-*
RUN apt-get update -y && apt-get install curl tar -y
COPY runner.sh .
RUN chmod +x runner.sh
ENV TOKEN="temp"
ENTRYPOINT ./runner.sh ${TOKEN}
