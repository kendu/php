FROM php:7.1-alpine

VOLUME ["/var/app"]
WORKDIR /opt/app

COPY setup-phpext.sh setup-composer.sh setup-xdebug.sh /
RUN sh /setup-phpext.sh && sh /setup-xdebug.sh && sh /setup-composer.sh && rm /setup-*.sh
COPY cli.ini /usr/local/etc/php/conf.d/kendu-cli.ini


