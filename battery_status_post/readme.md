Please use the following command to build the Docker image

docker build --no-cache --pull -t shankershawn/battery_post:latest .
docker push shankershawn/battery_post:latest

Please use the following command for bringing up the server

docker run -tid --restart=always --pull=always shankershawn/battery_post:latest
