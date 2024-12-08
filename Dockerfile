FROM jenkins/jenkins:2.488-jdk21@sha256:5ac04a7521461b040dbe9bdb84448fb32e590640b50ddb870697b147e585a4d5

USER root

RUN apt-get update && apt-get install -y lsb-release

RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg

RUN echo "deb [arch=$(dpkg --print-architecture) \
          signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
          https://download.docker.com/linux/debian \
          $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list

RUN apt-get update && apt-get install -y docker-ce-cli

RUN apt-get clean

USER jenkins

RUN jenkins-plugin-cli --plugins "docker-workflow:580.vc0c340686b_54 pipeline-stage-view:2.34"