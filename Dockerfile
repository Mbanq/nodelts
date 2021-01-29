FROM node:lts

MAINTAINER Mbanq <dev@mbanq.com>

RUN apt-get update && apt-get install -y python-pip jq curl; \
    pip install --quiet --upgrade pip awscli

ENV PATH "/root/.local/bin:${PATH}"