################################################################################
#                                                                              #
#                                 {o,o}                                        #
#                                 |)__)                                        #
#                                 -"-"-                                        #
#                                                                              #
################################################################################

#################################---INFO---#####################################

FROM kendu/php:5.6
MAINTAINER devops@kendu.si

################################################################################

################################---BUILD---#####################################

RUN wget -O - https://download.newrelic.com/548C16BF.gpg | apt-key add -
RUN echo "deb http://apt.newrelic.com/debian/ newrelic non-free" \
    > /etc/apt/sources.list.d/newrelic.list
RUN apt-get update -y; \
    apt-get -y install newrelic-php5; \
    newrelic-install install; \
    apt-get clean

ADD newrelic_php_config /etc/php5/fpm/conf.d/newrelic.ini

################################################################################
