Please use the following command to build the Docker image

docker build -t shankershawn/raspi-alarm-server:armv7 .
docker push shankershawn/raspi-alarm-server:armv7

Please use the following command for bringing up the server

docker run -tid --restart=always --pull=always --name=raspi-alarm-server --privileged shankershawn/raspi-alarm-server:armv7
