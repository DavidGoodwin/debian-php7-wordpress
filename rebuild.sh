#!/bin/bash

set -exu

cd $(dirname $0)

docker login -u davidgoodwin -p gingersharkbeans99

docker build --rm --no-cache --pull \
     -t davidgoodwin/debian-php7-wordpress:build-$(date +%F) \
     -t davidgoodwin/debian-php7-wordpress:latest .

docker push davidgoodwin/debian-php7-wordpress:build-$(date +%F)
docker push davidgoodwin/debian-php7-wordpress:latest
