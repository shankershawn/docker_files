FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y wget tar
RUN wget -O jfrog-artifactory-pro.tar.gz "https://releases.jfrog.io/artifactory/artifactory-pro/org/artifactory/pro/jfrog-artifactory-pro/[RELEASE]/jfrog-artifactory-pro-[RELEASE]-linux.tar.gz"
RUN tar -xvzf jfrog-artifactory-pro.tar.gz
CMD ./artifactory-pro*/app/bin/artifactoryctl start
