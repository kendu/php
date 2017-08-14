FROM php:7.1-fpm-alpine

COPY custom.sh /
RUN sh /custom.sh && rm /custom.sh

VOLUME ["/var/app"]
WORKDIR /opt/app

COPY custom.ini /usr/local/etc/php/conf.d/90-custom.ini
