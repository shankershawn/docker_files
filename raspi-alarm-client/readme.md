Please use the following command to build the Docker image

docker build --no-cache --pull -t shankershawn/raspi-alarm-client:latest .
docker push shankershawn/raspi-alarm-client:latest

Please use the following command for bringing up the server

docker run -tid --restart=always --pull=always -p 5001:8080 shankershawn/raspi-alarm-client:latest
