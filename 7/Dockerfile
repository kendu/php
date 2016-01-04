################################################################################
#                                                                              #
#                                 {o,o}                                        #
#                                 |)__)                                        #
#                                 -"-"-                                        #
#                                                                              #
################################################################################
#
# The php-fpm container
#
#################################---INFO---#####################################

FROM ubuntu:latest
MAINTAINER DevOps <devops@kendu.si>

################################################################################

#################################---ENV---######################################

ENV DEBIAN_FRONTEND noninteractive
ENV LANG=C.UTF-8

################################################################################

################################---BUILD---#####################################

RUN apt-get update && \
    apt-get install --yes --force-yes --no-install-recommends \
        software-properties-common

RUN locale-gen en_US.UTF-8
RUN add-apt-repository ppa:ondrej/php; \
    apt-get update && \
    apt-get upgrade --yes --force-yes && \
    apt-get install --yes --force-yes --no-install-recommends \
        php7.0 \
        php7.0-cli \
        php7.0-fpm \
        php7.0-common \
        php7.0-curl \
        php7.0-gmp \
        php7.0-intl \
        php7.0-json \
        php7.0-mcrypt \
        php7.0-pgsql \
        php7.0-mysql \
        php7.0-readline \
        php7.0-sqlite3 \
        php7.0-gd \
        wget \
        git \
    && \
    apt-get clean

WORKDIR /var/www/html
COPY php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf

################################################################################

#################################---EXPOSE---###################################

EXPOSE 9000

################################################################################

#################################---CMD---######################################

CMD php-fpm7.0

################################################################################
