#!/bin/bash

set -exu

cd $(dirname $0)

docker build --rm --no-cache --pull -t davidgoodwin/jessie-php7-wordpress:build-$(date +%F) -t davidgoodwin/jessie-php7-wordpress:latest .

# docker push davidgoodwin/jessie-php7-wordpress:build-$(date +%F)
# docker push davidgoodwin/jessie-php7-wordpress:latest
