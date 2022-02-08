FROM node:latest
ARG ojet_version
RUN npm install -g @oracle/ojet-cli@$ojet_version;\
ojet create myojetapp --template=navbar
WORKDIR myojetapp
CMD ojet serve --release
EXPOSE 8000
