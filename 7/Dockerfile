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
RUN locale-gen en_US.UTF-8

ADD install.sh /tmp/install.sh
RUN /bin/bash /tmp/install.sh
ADD php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf


WORKDIR /opt/web

# FPM
EXPOSE 9000

CMD php-fpm7.0
