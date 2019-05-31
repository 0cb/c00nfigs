#!/bin/bash
#===========================================================================#
#=									   =#
#   Filename:	    install_polybar.sh
#   Version:	    1.0
#=									   =#
#   Description:    install polybar for ubuntu
#		    because we're scrubs that can't Arch
#		    be sure to run with 'sudo'
#
#=  Author:	    0cb - Christian Bowman				   =#
#   Creation:	    2019-05-27
#   Updated:	    2019--
#=									   =#
#===========================================================================#

# install the tarball to 'home' from: https://github.com/polybar/polybar/releases
# build instructions straight form https://github.com/polybar/polybar/wiki/Compiling

#--------------- sudocheck ---------------#

if [[ $(id -u) -ne 0 ]];
then
    printf "\nrerunning with 'sudo'\n"
    sudo "$0"
else
    printf "\nStatus: "; id -u
fi

#--------------- dependencies ---------------#

apt-get install build-essential git cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev -y
apt-get install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev clang -y

#--------------- build ---------------#

#tar xvf polybar-*.tar
cd ~/programs
git clone --recursive https://github.com/polybar/polybar
cd polybar
mkdir build; cd build

cmake -DCMAKE_CXX_COMPILER="clang++" ..
make -j$(nproc)
make install

#--------------- confirmation ---------------#

which polybar

