#!/bin/bash
#===========================================================================#
#=									   =#
#   Filename:	    sudowudos.sh
#   Version:	    1.0
#=									   =#
#   Description:    running packages list for easy clean installs
#		    be sure to run script as 'sudo'
#
#=  Author:	    0cb - Christian Bowman				   =#
#   Creation:	    2019-05-27
#   Updated:	    2019--
#=									   =#
#===========================================================================#

#--------------- sudocheck ---------------#

if [[ $(id -u) -ne 0 ]];
then
    printf "\nrerunning with 'sudo'\n"
    sudo "$0"
else
    printf "\nStatus: $(id -u) \n"
fi


apt-get update
apt-get upgrade -y

#--------------- openbox ---------------#

printf "\ninstalling openbox packages\n"
apt-get install openbox obconf feh

#--------------- terminal ---------------#

printf "\ninstalling terminal packages\n"
apt-get install rxvt-unicode vim ranger rofi

#--------------- assthetic ---------------#

printf "\ninstalling assthetic packages\n"
apt-get install compton

#--------------- applications ---------------#

printf "\ninstalling applications packages\n"
apt-get install gummi

#--------------- misc ---------------#

printf "\ninstalling misc packages\n"
apt-get install pdfgrep fonts-powerline


