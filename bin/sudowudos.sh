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
#   Updated:	    2019-07-08 14:48
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


apt-get update
apt-get upgrade -y

#--------------- openbox ---------------#

printf "$red \ninstalling openbox packages\n $end"
apt-get install openbox obconf feh

#--------------- terminal ---------------#

printf "$red \ninstalling terminal packages\n $end"
apt-get install rxvt-unicode vim ranger rofi

#--------------- assthetic ---------------#

printf "$red \ninstalling assthetic packages\n $end"
apt-get install compton

#--------------- applications ---------------#

printf "$red \ninstalling applications packages\n $end"
apt-get install gummi 

#--------------- misc ---------------#

printf "$red \ninstalling misc packages\n $end"
apt-get install pdfgrep fonts-powerline imagemagick xterm libreoffice-java-common

#--------------- python3 ---------------#

printf "$red \ninstalling python3 packages\n $end"
pip3 install pywal beautifulsoup4 requests retrying pysocks subsample discord.py

