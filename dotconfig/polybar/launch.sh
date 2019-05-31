#!/usr/bin/env sh
#===========================================================================#
#=									   =#
#   Filename:	    launch.sh
#   Version:	    1.0
#=									   =#
#   Description:    polybar launcher script
#		    - for use with openbox ricing
#		    - place in $HOME
#		    - ripped ofc
#
#=  Author:	    0cb - Christian Bowman				   =#
#   Creation:	    2019-05-28
#   Updated:	    2019--
#=									   =#
#===========================================================================#


## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -c ~/.config/polybar/config.ini main &
