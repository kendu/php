#!/usr/bin/env sh

set -e
pkgs="g++ make autoconf
      pngquant gifsicle jpegoptim
      freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev icu-dev
      libmcrypt-dev
      postgresql-dev"

apk add --no-cache $pkgs \
           --repository="http://nl.alpinelinux.org/alpine/edge/testing" \
           --repository="http://nl.alpinelinux.org/alpine/edge/community" \
           --allow-untrusted

docker-php-ext-configure gd \
        --with-jpeg-dir=/usr/include/ \
        --with-png-dir=/usr/include/ \
        --with-freetype-dir=/usr/include/

docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) gd iconv mcrypt exif pgsql pdo_pgsql intl mysqli pdo_mysql intl sockets opcache
docker-php-source delete