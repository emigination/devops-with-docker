#!/bin/sh

git clone https://github.com/$1 repo
docker build -f repo/Dockerfile -t $2 .
docker login -u $DOCKER_USER -p $DOCKER_PWD
docker push $2
