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
RUN locale-gen sl_SI.UTF-8
# Use Ondřej Surý's PHP 5.6 packages
RUN echo "deb http://ppa.launchpad.net/ondrej/php5-5.6/ubuntu trusty main " \
       > /etc/apt/sources.list.d/ondrej.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E5267A6C
RUN apt-get update -y

# Instaling package and clean up the mess
RUN apt-get -y install \
        php5=5.6.* \
        php5-fpm \
        php5-common \
        php5-curl \
        php5-gmp \
        php5-imagick \
        php5-intl \
        php5-json \
        php5-mcrypt \
        php5-memcache \
        php5-mongo \
        php5-pgsql \
        php5-mysql \
        php5-readline \
        php5-sqlite \
        php5-xdebug \
        php5-gd \
        wget \
        git \
        php5-cli \
        php5-readline \
    && \
    apt-get clean

RUN php5enmod mcrypt
RUN rm /etc/php5/fpm/pool.d/www.conf

WORKDIR /opt/web

# FPM
EXPOSE 9000

CMD php5-fpm --fpm-config=/etc/php5/fpm/php-fpm.conf \
             --force-stderr \
             -c /etc/php5/fpm/php.ini
