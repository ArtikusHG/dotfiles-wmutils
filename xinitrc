# Start my stuff
/home/artikus/.fehbg
xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr
sxhkd & /home/artikus/contrib/bar.sh | lemonbar -p -f "t cherry" -u 8 & compton & mpd & wew | $HOME/contrib/yawee & dunst
