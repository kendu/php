################################################################################
#                                                                              #
#                                 {o,o}                                        #
#                                 |)__)                                        #
#                                 -"-"-                                        #
#                                                                              #
################################################################################

#################################---INFO---#####################################

FROM kendu/php:5.6
MAINTAINER Kendu devops@kendu.si

################################################################################

################################---BUILD---#####################################

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

################################################################################
