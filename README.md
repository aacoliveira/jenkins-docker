# Jenkins with Docker

## Goal of this Repo

At the end you will get a [v2.489 Jenkins instance](https://www.jenkins.io/changelog/2.489/) and a [Docker Dind](https://hub.docker.com/_/docker) that together gives you the ability to create new containers to be used as agents in your CI/CD pipeline flow.

Also, there is a optional step at the end to get Metrics stack.

## Plugins

These are automatically configure installed during build phase: [plugins/README.md](plugins/)

## Building with Docker Compose

Use the following commands to build and get all services up and running.

### Clone the repo and unzip the file

```bash
wget -O jenkins-docker.zip https://github.com/aacoliveira/jenkins-docker/archive/refs/heads/main.zip
unzip jenkins-docker.zip
cd jenkins-docker-main/
```

### Build

Download all images:

```bash
docker compose pull
```

Build the Jenkins image:

```bash
docker compose build
```

### Start services

The **-d** flag can be used on the following command to run in detached mode and free your terminal.

Just Run:

```bash
docker compose up
```

### Validation

To see if went well:

```bash
docker container ls
```

There must be exactly two containers named **jenkins** and **dind**.

## Initial Password

Exec the following command:

```bash
docker container exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

## Login

:warning: Create new users and password after initial login

|Tool | Location | Credentials | 
| --- | --- | --- |
| Jenkins UI | http://localhost:8080 | admin / initial password obtained earlier|

## Optional - Metrics

See [metrics/README.md](metrics/) to more instructions.