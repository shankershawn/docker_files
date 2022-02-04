FROM node:latest
RUN ["npm", "install", "-g", "npm", "heroku"]
COPY docker_cmd.sh .
CMD ["sh", "./docker_cmd.sh"]
