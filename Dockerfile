################################################################################
#                                                                              #
#                                 {o,o}                                        #
#                                 |)__)                                        #
#                                 -"-"-                                        #
#                                                                              #
################################################################################

#################################---INFO---#####################################

FROM kendu/php:5.6-localized
MAINTAINER Kendu devops@kendu.si

################################################################################

#################################---ENV---######################################

ENV DEBIAN_FRONTEND noninteractive

################################################################################

################################---BUILD---#####################################

RUN apt-get update; \
    apt-get install -y phpunit \
        advancecomp \
        pngcrush \
        gifsicle \
        jpegoptim \
        libjpeg-progs \
        libjpeg8-dbg \
        libimage-exiftool-perl \
        imagemagick \
        pngnq \
        tar \
        unzip \
        build-essential \
        libpng-dev; \
    apt-get clean
ADD install.sh /opt/install.sh
RUN chmod +x /opt/install.sh; \
    /opt/install.sh; \
    rm /opt/install.sh

################################################################################
