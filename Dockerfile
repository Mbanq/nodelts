FROM node:lts-alpine3.12

MAINTAINER Mbanq <dev@mbanq.com>

RUN apk update -q && apk upgrade -q && apk add -q \
    bash \
    git \
    grep \
    python3 \
    py3-pip \
    jq; \
    pip3 install --quiet --upgrade pip awscli

ENV PATH "/root/.local/bin:${PATH}"