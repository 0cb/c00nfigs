#!/bin/bash
#===========================================================================#
#=									   =#
#   Filename:	    install_fsearch.sh
#   Version:	    1.0
#=									   =#
#   Description:    install fsearch application
#		    be sure to run with 'sudo'
#
#=  Author:	    0cb - Christian Bowman				   =#
#   Creation:	    2019-05-31
#   Updated:	    2019--
#=									   =#
#===========================================================================#

# build instructions straight from: git clone https://github.com/cboxdoerfer/fsearch.git
# PPA route:  
#   sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-daily
#   sudo apt-get update
#   sudo apt install fsearch-trunk

#--------------- sudocheck ---------------#

if [[ $(id -u) -ne 0 ]];
then
    printf "\nrerunning with 'sudo'\n"
    sudo "$0"
    exit $?
#else
#    printf "\nStatus: $(id -u) \n"
fi

#--------------- dependencies ---------------#

apt-get install git build-essential automake autoconf libtool pkg-config intltool autoconf-archive libpcre3-dev libglib2.0-dev libgtk-3-dev libxml2-utils -y

#--------------- building ---------------#

mkdir -p ~/programs; cd ~/programs
git clone https://github.com/cboxdoerfer/fsearch.git
cd fsearch

./autogen.sh
./configure
make && make install

#--------------- confirmation ---------------#

which fsearch

