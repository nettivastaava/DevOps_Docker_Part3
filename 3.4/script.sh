#!/bin/sh

git clone https://github.com/$1.git ./repository

cd ./repository

echo "$DOCKER_PWD" | docker login --username "$DOCKER_USER" --password-stdin

docker build . -t testing

docker tag testing $2:latest

docker push $2:latest

