FROM debian
MAINTAINER Hugo Dias <mail@hugodias.me>

ENV BUILD_PACKAGES python \
    build-essential \
    python-dev \
    python-distribute \
    python-pip \
    libbz2-dev \
    libcurl4-openssl-dev \
    libdb-dev \
    libevent-dev \
    libffi-dev \
    libgeoip-dev \
    libglib2.0-dev \
    libjpeg-dev \
    liblzma-dev \
    libpq-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    libtool \
    libyaml-dev \
    patch \
    xz-utils \
    zlib1g-dev

ENV RUNTIME_PACKAGES python \
    rsync \
    curl \
    ssh

RUN echo "deb http://httpredir.debian.org/debian jessie contrib" >> /etc/apt/sources.list

RUN apt-get update \
    && apt-get install -y --no-install-recommends ${BUILD_PACKAGES} \
    && pip install -U ansible \
    && apt-get remove --purge -y ${BUILD_PACKAGES} $(apt-mark showauto) \
    && apt-get install -y --no-install-recommends ${RUNTIME_PACKAGES} \
    && apt-get clean \
    && rm -rf /tmp/* /var/tmp/* \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 80
