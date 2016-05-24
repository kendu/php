################################################################################
#                                                                              #
#                                 {o,o}                                        #
#                                 |)__)                                        #
#                                 -"-"-                                        #
#                                                                              #
################################################################################

#################################---INFO---#####################################

FROM kendu/php:7.0
MAINTAINER devops@kendu.si

################################################################################

################################---BUILD---#####################################

RUN apt-get update; \
    apt-get --yes --force-yes install php7.0-dev \
        php-pear \
        libgearman-dev;
RUN cd /tmp; \
    git clone https://github.com/wcgallego/pecl-gearman.git; \
    cd pecl-gearman; \
    phpize; \
    ./configure; \
    make; \
    make install; \
    echo 'extension=gearman.so' | tee -a /etc/php/7.0/fpm/php.ini /etc/php/7.0/cli/php.ini; \
    apt-get clean

################################################################################
