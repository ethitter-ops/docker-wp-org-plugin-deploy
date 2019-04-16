FROM debian:stretch-slim

LABEL maintainer="ethitter"
LABEL version="1.0"

RUN echo "deb http://security.debian.org/ stretch/updates main" >> /etc/apt/sources.list

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        ca-certificates \
        curl \
        git \
        rsync \
        subversion \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
