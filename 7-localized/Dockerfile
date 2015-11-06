#
#       .
#        ":"
#      ___:____     |"\/"|
#    ,'        `.    \  /
#    |  O        \___/  |
#  ~^~^~^~^~^~^~^~^~^~^~^~^~

# The php-fpm container

FROM ubuntu:latest
MAINTAINER DevOps <devops@kendu.si>

ENV DEBIAN_FRONTEND noninteractive
RUN locale-gen sl_SI.UTF-8; \
    locale-gen hu_HU.UTF-8; \
    locale-gen pl_PL.UTF-8; \
    locale-gen de_AT.UTF-8; \
    locale-gen cs_CZ.UTF-8; \
    locale-gen it_IT.UTF-8; \
    locale-gen en_US.UTF-8; \
    locale-gen de_DE.UTF-8; \
    locale-gen fr_FR.UTF-8; \
    locale-gen en_GB.UTF-8; \
    locale-gen es_ES.UTF-8; \
    locale-gen ja_JP.UTF-8; \
    locale-gen zh_CN.UTF-8;


    ADD install.sh /tmp/install.sh
    RUN /bin/bash /tmp/install.sh
    ADD www.conf /etc/php/7.0/fpm/pool.d/www.conf


    WORKDIR /opt/web

    # FPM
    EXPOSE 9000

    CMD php-fpm7.0 \
        --force-stderr \
        -c /etc/php/7.0/fpm/php.ini \
        --fpm-config=/etc/php/7.0/fpm/php-fpm.conf \
        -F
