ARG VERSION=jammy

FROM docker.io/library/ubuntu:${VERSION}

RUN apt-get update -y && \
    apt-get install -y zsh stow git vim nano software-properties-common
