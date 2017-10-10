FROM php:7.1-fpm-alpine

VOLUME ["/var/app"]
WORKDIR /opt/app

COPY setup-phpext.sh setup-composer.sh setup-xdebug.sh /
RUN sh /setup-phpext.sh && sh /setup-xdebug.sh && sh /setup-composer.sh && rm /setup-*.sh
COPY fpm-dev.ini /usr/local/etc/php/conf.d/kendu-fpm-dev.ini


