#!/bin/bash

set -exu

docker build --rm --pull -t davidgoodwin/jessie-php7-wordpress:build-$(date +%F) -t davidgoodwin/jessie-php7-wordpress:latest .

docker push davidgoodwin/jessie-php7-wordpress:build-$(date +%F)
docker push davidgoodwin/jessie-php7-wordpress:latest




