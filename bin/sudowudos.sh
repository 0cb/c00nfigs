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
    printf "$RED \nrerunning with 'sudo'\n $NC"
    sudo "$0"
    exit $?
else
    printf "\nStatus: $(id -u) \n"
fi


apt-get update
apt-get upgrade -y

#--------------- openbox ---------------#

printf "$RED \ninstalling openbox packages\n $NC"
apt-get install openbox obconf feh

#--------------- terminal ---------------#

printf "$RED \ninstalling terminal packages\n $NC"
apt-get install rxvt-unicode vim ranger rofi

#--------------- assthetic ---------------#

printf "$RED \ninstalling assthetic packages\n $NC"
apt-get install compton

#--------------- applications ---------------#

printf "$RED \ninstalling applications packages\n $NC"
apt-get install gummi
pip3 install pywal

#--------------- misc ---------------#

printf "$RED \ninstalling misc packages\n $NC"
apt-get install pdfgrep fonts-powerline imagemagick


