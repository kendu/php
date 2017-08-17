#!/usr/bin/env sh

set -xe
pkgs="g++ make autoconf"

apk add --no-cache $pkgs \
           --repository="http://nl.alpinelinux.org/alpine/edge/testing" \
           --repository="http://nl.alpinelinux.org/alpine/edge/community" \
           --allow-untrusted

pecl install xdebug-2.5.0
docker-php-ext-enable xdebug
docker-php-source delete
