FROM debian:bullseye-slim

LABEL maintainer="ethitter"
LABEL version="1.0"

RUN echo "deb http://security.debian.org/debian-security bullseye-security main contrib non-free" >> /etc/apt/sources.list

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        ca-certificates \
        curl \
        git \
        rsync \
        subversion \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
