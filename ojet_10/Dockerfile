FROM node:latest
RUN ["npm", "install", "-g", "@oracle/ojet-cli@10.0.0"]
RUN ["ojet", "create", "myojetapp", "--template=navbar"]
WORKDIR myojetapp
CMD ["ojet", "serve", "--release"]
EXPOSE 8000
