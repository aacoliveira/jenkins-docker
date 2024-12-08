# Jenkins with Docker

## Resume of this Repo

At the end you will get a [v2.488 Jenkins server](https://www.jenkins.io/changelog/2.488/) that works together with [Docker Dind](https://hub.docker.com/_/docker) giving you the ability to spawn new containers during your CI/CD pipeline.

## Plugins

These are automatically installed during build time:

- https://plugins.jenkins.io/docker-workflow/
- https://plugins.jenkins.io/pipeline-stage-view/

## To speed up

You can download the docker images firsthand with the command:

```bash
docker image pull jenkins/jenkins:2.488-jdk21@sha256:5ac04a7521461b040dbe9bdb84448fb32e590640b50ddb870697b147e585a4d5
docker image pull docker:dind@sha256:bec82cb05983f12a14d8f169b00748f4ded8573f4da5f1d15d375b6a2470289f
```

## Building with Compose

Use the following command to build and get all services up and running:

```bash
docker compose up
```

## Password location

*Exec* into Jenkins container and get password with **cat  /var/jenkins_home/secrets/initialAdminPassword**

:warning: Create new users and password after initial login