FROM debian:stretch
LABEL maintainer="Oontcoin Developers <dev@oontcoin.org>"
LABEL description="Dockerised OontcoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
