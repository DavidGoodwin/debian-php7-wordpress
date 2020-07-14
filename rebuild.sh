#!/bin/bash

set -exu

cd $(dirname $0)

docker login -u davidgoodwin -p gingersharkbeans99

docker build --rm --no-cache --pull -t davidgoodwin/stretch-php7-wordpress:build-$(date +%F) -t davidgoodwin/stretch-php7-wordpress:latest .

docker push davidgoodwin/stretch-php7-wordpress:build-$(date +%F)
docker push davidgoodwin/stretch-php7-wordpress:latest
