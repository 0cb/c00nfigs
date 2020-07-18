#!/bin/bash
#===========================================================================#
#=									   =#
#   Filename:	    install_r.sh
#   Version:	    1.0
#=									   =#
#   Description:    simple install for R
#
#=  Author:	    0cb - Christian Bowman				   =#
#   Creation:	    2019-07-18 10:38
#   Updated:	    
#=									   =#
#===========================================================================#

#--------------- sudocheck ---------------#

red=$'\e[1;31m'
end=$'\e[0m'

if [[ $(id -u) -ne 0 ]];
then
    printf "$red \nrerunning with 'sudo'\n $end"
    sudo "$0"
    exit $?
#else
#    printf "\nStatus: $(id -u) \n"
fi

#--------------- building ---------------#

add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu disco-cran35/'
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
apt-get update
apt-get install r-base-dev

#--------------- confirmation ---------------#

whereis R


