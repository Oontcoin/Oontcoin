#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-oontcoinpay/oontcoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/oontcoind docker/bin/
cp $BUILD_DIR/src/oontcoin-cli docker/bin/
cp $BUILD_DIR/src/oontcoin-tx docker/bin/
strip docker/bin/oontcoind
strip docker/bin/oontcoin-cli
strip docker/bin/oontcoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
