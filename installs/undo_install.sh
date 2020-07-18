#!/bin/bash
##https://ubuntuforums.org/showthread.php?t=2133328


#grab most recent package installs from logs
awk '!/^Start|^Commandl|^End|^Upgrade:|^Error:/ { gsub( /\([^()]*\)/ ,"" );gsub(/ ,/," ");sub(/^Install:/,""); print}' /var/log/apt/history.log

#copy and paste output
echo "type sudo apt-get remove [packages here]"
