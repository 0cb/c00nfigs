#!/bin/bash
#===========================================================================#
#=									   =#
#   Filename:	    install_mysql.sh
#   Version:	    1.0
#=									   =#
#   Description:    install mysql application
#
#=  Author:	    0cb - Christian Bowman				   =#
#   Creation:	    2019-07-08 15:02
#   Updated:	    
#=									   =#
#===========================================================================#

# build instructions straight from: https://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/
# install .deb to ~/programs

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

cd ~/programs

# TODO:  try to make this search for .deb, set var, then sudo blah blah said var <19-07-08, cb> #
dpkg -i mysql-apt-config_w.x.y-z_all.deb
apt-get update
apt-get install mysql-server

#--------------- confirmation ---------------#

service mysql status

