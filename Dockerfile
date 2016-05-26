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

RUN apt-get update \
	&& apt-get install -y php5.6-dev

RUN echo "deb http://us.archive.ubuntu.com/ubuntu xenial main universe" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y librabbitmq-dev \
	&& pecl install amqp \
	&& echo 'extension=amqp.so' | tee -a /etc/php/5.6/fpm/php.ini /etc/php/5.6/cli/php.ini

################################################################################
