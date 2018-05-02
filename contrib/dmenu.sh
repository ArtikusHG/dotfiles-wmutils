items=("urxvt\nmin\nfirefox\n")
choice=$(ls /usr/bin | dmenu -fn "t cherry" -nb "#272D3A" -l 10)
if [ $choice = "urxvt" ]; then
nohup urxvtc -g 60x20+26+43 &
else
nohup $choice &
fi
