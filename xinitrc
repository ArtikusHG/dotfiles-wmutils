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

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# Start my stuff
/home/artikus/.fehbg
mpd
sxhkd & /home/artikus/contrib/focus_watcher.sh & /home/artikus/bar.sh | lemonbar -p -f "t cherry" -u 8 -g 1322x20+22 & compton & dunst
