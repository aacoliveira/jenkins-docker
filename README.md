# Jenkins with Docker

## To speed up things one can download the docker images firsthand

Command:

```bash
docker image pull jenkins/jenkins:2.487-jdk21@sha256:8a3d9dfc2388a1a9a777c774b4701ac9d2498acaae0d56576c00737d55e3159f 
docker image pull docker:dind@sha256:bec82cb05983f12a14d8f169b00748f4ded8573f4da5f1d15d375b6a2470289f
```

## Plugins

These are automatically installed during build time:

- https://plugins.jenkins.io/docker-workflow/
- https://plugins.jenkins.io/pipeline-stage-view/

## Building with Compose

Use the following command to build and get all services up and running:

```bash
docker compose up
```

## Password location

*Exec* into Jenkins container and get password with **cat  /var/jenkins_home/secrets/initialAdminPassword**

:warning: Create new users and password after initial login