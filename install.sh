#!/bin/bash

################################################################################
#                                                                              #
#                                 {o,o}                                        #
#                                 |)__)                                        #
#                                 -"-"-                                        #
#                                                                              #
################################################################################

#################################---ENV---######################################

OPTIPNG_VERSION="0.7.5"
architectures=(x86_64 athlon i386 i686 pentium4)
BASE_DIR=/opt/tools
PNGQUANT_REPO="https://github.com/pornel/pngquant.git"
OPTIPNG_LINK="http://downloads.sourceforge.net/project/optipng/OptiPNG/optipng-${OPTIPNG_VERSION}/optipng-${OPTIPNG_VERSION}.tar.gz"
PNGOUT_LINK="http://static.jonof.id.au/dl/kenutils/pngout-20130221-linux-static.tar.gz"

################################################################################

##############################---FUNCTIONS---###################################

function install_pngquant() {
    echo "INFO: Installing pngquant."
    mkdir ${BASE_DIR}
    cd ${BASE_DIR}
    git clone ${PNGQUANT_REPO}
    cd ./pngquant
    git checkout 2.0.2
    make
    ln -s ${BASE_DIR}/pngquant/pngquant /usr/bin/pngquant
}

function install_opptipng() {
    echo "INFO: Installing optipng."
    cd ${BASE_DIR}
    wget ${OPTIPNG_LINK}
    tar xvf optipng-${OPTIPNG_VERSION}.tar.gz
    cd ./optipng-${OPTIPNG_VERSION}
    ./configure
    make
    ln -s ${BASE_DIR}/optipng-${OPTIPNG_VERSION}/src/optipng/optipng /usr/bin/optipng
}

function install_pngout() {
    echo "INFO: Installing pngout."
    cd ${BASE_DIR}
    wget ${PNGOUT_LINK}
    tar xvf pngout-20130221-linux-static.tar.gz
    for architecture in ${architectures[*]}
    do
        ln -s ${BASE_DIR}/pngout-20130221-linux-static/$architecture/pngout-static /usr/bin/pngout
        pngout 1> /dev/null 2> /dev/null
        OUT=$?
        if [ $OUT -eq 1 ]
        then
            break
        else
            rm /usr/bin/pngout
        fi
    done
}

################################################################################

###############################---EXECUTION---##################################

install_pngquant
install_opptipng
install_pngout

################################################################################
