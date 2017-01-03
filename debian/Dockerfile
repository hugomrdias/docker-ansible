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


RUN echo "===> Installing python, and supporting tools..."  && \
    apt-get -qq update && apt-get -qq install --fix-missing && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -qq install --no-install-recommends ${BUILD_PACKAGES} > /dev/null && \
    apt-get -qq --purge remove python-cffi          && \
    pip install -q --upgrade cffi                     && \
    \
    \
    echo "===> Installing Ansible..."   && \
    pip install -q ansible && \
    \
    \
    echo "===> Removing unused APT resources..."                  && \
    apt-get -qq remove --purge ${BUILD_PACKAGES} $(apt-mark showauto) > /dev/null && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -qq install --no-install-recommends ${RUNTIME_PACKAGES} > /dev/null && \
    apt-get clean && \
    rm -rf  /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    \
    \
    echo "===> Adding hosts for convenience..."        && \
    mkdir -p /etc/ansible                              && \
    echo 'localhost ansible_connection=local' > /etc/ansible/hosts
