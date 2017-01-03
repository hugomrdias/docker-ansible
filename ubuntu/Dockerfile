FROM ubuntu:16.04
MAINTAINER Hugo Dias <mail@hugodias.me>

ENV RUNTIME_PACKAGES python \
    rsync \
    curl \
    ca-certificates \
    openssh-client \
    sshpass \
    git

RUN echo "===> Adding Ansible's PPA..."  && \
    echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu xenial main" | tee /etc/apt/sources.list.d/ansible.list           && \
    echo "deb-src http://ppa.launchpad.net/ansible/ansible/ubuntu xenial main" | tee -a /etc/apt/sources.list.d/ansible.list    && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 7BB9C367    && \
    DEBIAN_FRONTEND=noninteractive  apt-get -qq update  && \
    \
    \
    echo "===> Installing Ansible..."  && \
    apt-get -qq install ansible > /dev/null && \
    \
    \
    echo "===> Installing handy tools (not absolutely required)..."  && \
    apt-get -qq install --no-install-recommends ${RUNTIME_PACKAGES} > /dev/null && \
    \
    \
    echo "===> Removing Ansible PPA..."  && \
    rm -rf /var/lib/apt/lists/*  /etc/apt/sources.list.d/ansible.list  && \
    \
    \
    echo "===> Adding hosts for convenience..."  && \
    echo 'localhost ansible_connection=local' > /etc/ansible/hosts
