FROM debian:jessie
MAINTAINER Hugo Dias <mail@hugodias.me>

ENV BUILD_PACKAGES python \
    gcc \
    curl \
    python-dev \
    python-pip \
    libffi-dev \
    libssl-dev

ENV RUNTIME_PACKAGES python \
    rsync \
    curl \
    ca-certificates \
    openssh-client \
    sshpass \
    git

RUN echo "deb http://httpredir.debian.org/debian jessie contrib" >> /etc/apt/sources.list

RUN apt-get update -y && apt-get install --fix-missing && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends ${BUILD_PACKAGES} && \
    pip install -U ansible && \
    apt-get remove --purge -y ${BUILD_PACKAGES} $(apt-mark showauto) && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends ${RUNTIME_PACKAGES} && \
    apt-get clean && \
    rm -rf  /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80
