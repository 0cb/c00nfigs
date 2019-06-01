#!/bin/bash
#===========================================================================#
#=									   =#
#   Filename:	    install_zotero.sh
#   Version:	    1.0
#=									   =#
#   Description:    install zotero application
#		    be sure to run with 'sudo'
#
#=  Author:	    0cb - Christian Bowman				   =#
#   Creation:	    2019-05-27
#   Updated:	    2019--
#=									   =#
#===========================================================================#

# install tarball to 'home' from: https://www.zotero.org/download/

#--------------- sudocheck ---------------#

if [[ $(id -u) -ne 0 ]];
then
    printf "\nrerunning with 'sudo'\n"
    sudo "$0"
    exit $?
#else
#    printf "\nStatus: $(id -u) \n"
fi

#--------------- building ---------------#

#tar xvf zot*.tar*
mv Zotero_linux-x86_64 /opt
sudo ln -s /opt/Zotero_linux-x86_64/zotero /usr/bin/zotero

#--------------- confirmation ---------------#

which zotero


