#!/bin/sh

export NODE_VERSION=10.14.2

docker build --no-cache --build-arg NODE_VERSION -t node-provided-lambda-v10.x .
docker run --rm node-provided-lambda-v10.x cat /tmp/node-v${NODE_VERSION}.zip > ./layer.zip
