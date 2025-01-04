# docker build -t acrdpwinfra.azurecr.io/k8s-devops-agent:20230711 . --platform linux/amd64
# docker push acrdpwinfra.azurecr.io/k8s-devops-agent:20230711
# or
# podman build -t acrdpwinfra.azurecr.io/k8s-devops-agent:20230711 . --arch=amd64
# podman push acrdpwinfra.azurecr.io/k8s-devops-agent:20230711

FROM ubuntu:20.04

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y -qq --no-install-recommends \
    apt-transport-https \
    apt-utils \
    ca-certificates \
    curl \
    git \
    iputils-ping \
    jq \
    lsb-release \
    software-properties-common \
    zip \
    unzip \
    build-essential \
    && curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" \
    && /home/linuxbrew/.linuxbrew/bin/brew install \
    Azure/kubelogin/kubelogin \
    terraform \
    terragrunt \
    && /home/linuxbrew/.linuxbrew/bin/brew cleanup --prune=all \
    && apt-get clean -y \
    && apt-get autoremove \
    && rm -Rf /var/cache/apt \
    && rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /var/log/*

ENV PATH="${PATH}:/home/linuxbrew/.linuxbrew/bin"

# Can be 'linux-x64', 'linux-arm64', 'linux-arm', 'rhel.6-x64'.
ENV TARGETARCH=linux-x64

WORKDIR /azp

COPY ./start.sh .
RUN chmod +x start.sh

ENTRYPOINT [ "./start.sh" ]