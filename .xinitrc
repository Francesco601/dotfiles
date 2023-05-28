#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi



case $session in
     kde) exec startplasma-x11;;
     bspwm) exec bspwm;;
 esac
	
	




    xrdb -merge "$userresources"



if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

