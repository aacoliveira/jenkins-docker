FROM jenkins/jenkins:2.487-jdk21@sha256:8a3d9dfc2388a1a9a777c774b4701ac9d2498acaae0d56576c00737d55e3159f

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