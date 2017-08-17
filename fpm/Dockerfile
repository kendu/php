FROM php:7.1-fpm-alpine

VOLUME ["/var/app"]
WORKDIR /opt/app

COPY setup-phpext.sh /
RUN sh /setup-phpext.sh && rm /setup-*.sh
COPY fpm-production.ini /usr/local/etc/php/conf.d/kendu-fpm-production.ini

