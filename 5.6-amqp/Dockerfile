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
	&& apt-get install -y php5-dev

RUN echo "deb http://us.archive.ubuntu.com/ubuntu xenial main universe" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y librabbitmq-dev \
	&& pecl install amqp \
	&& echo 'extension=amqp.so' | tee -a /etc/php5/fpm/php.ini /etc/php5/cli/php.ini

################################################################################
