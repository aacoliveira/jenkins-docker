FROM jenkins/jenkins:2.489-jdk21@sha256:385582ead32fd0484653faf6cb2615e34f8bba9892558a8727bbe3384ae2e348

USER root

RUN apt-get update && apt-get install -y lsb-release

RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
    https://download.docker.com/linux/debian/gpg

RUN echo "deb [arch=$(dpkg --print-architecture) \
          signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
          https://download.docker.com/linux/debian \
          $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list

RUN apt-get update && apt-get install -y docker-ce-cli && apt-get clean

USER jenkins

RUN jenkins-plugin-cli --plugins \
    docker-workflow:580.vc0c340686b_54 \
    pipeline-stage-view:2.34 \
    prometheus:801.v98e119d8eeda_ \
    cloudbees-folder:6.973.vc9b_85a_61e4fc \
    json-path-api:2.9.0-118.v7f23ed82a_8b_8 \
    token-macro:400.v35420b_922dcb_ \
    matrix-project:840.v812f627cb_578 \
    resource-disposer:0.25 \
    okhttp-api:4.11.0-181.v1de5b_83857df \
    pipeline-milestone-step:119.vdfdc43fc3b_9a_ \
    pipeline-build-step:540.vb_e8849e1a_b_d8 \
    jjwt-api:0.11.5-112.ve82dfb_224b_a_d \
    github-api:1.321-478.vc9ce627ce001 \
    github:1.40.0 \    
    git:5.6.0 \
    git-client:6.1.0 \
    mina-sshd-api-core:2.14.0-136.v4d2b_0853615e \
    mina-sshd-api-common:2.14.0-136.v4d2b_0853615e \
    gson-api:2.11.0-85.v1f4e87273c33 \
    trilead-api:2.147.vb_73cc728a_32e \
    eddsa-api:0.3.0-4.v84c6f0f4969e \
    theme-manager:262.vc57ee4a_eda_5d \
    antisamy-markup-formatter:162.v0e6ec0fcfcf6 \
    build-timeout:1.33 \
    timestamper:1.28 \
    ws-cleanup:0.48 \
    ant:511.v0a_a_1a_334f41b_ \
    gradle:2.14 \
    workflow-aggregator:600.vb_57cdd26fdd7 \
    github-branch-source:1807.v50351eb_7dd13 \
    pipeline-github-lib:61.v629f2cc41d83 \
    pipeline-graph-view:382.vb_9a_27b_7b_ea_71 \
    ssh-slaves:2.973.v0fa_8c0dea_f9f \
    matrix-auth:3.2.3 \
    pam-auth:1.11 \
    ldap:770.vb_455e934581a_ \
    email-ext:1861.vdb_d991590994 \
    dark-theme:514.va_3ea_73d65dc1     \