#!/bin/sh

git clone git@github.com:$1.git ./repository

cd ./repository

docker build . -t testing

docker tag testing $2:latest

docker push $2:latest

