FROM jenkins/inbound-agent:latest

USER root

RUN apt-get update && \
    apt-get install -y \
    docker.io \
    curl \
    unzip

RUN curl -LO https://dl.k8s.io/release/v1.34.0/bin/linux/amd64/kubectl && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/

USER jenkins

