#! /bin/bash
bash ~/.config/myUtils/feh.sh &
picom --experimental-backends --config ~/.config/picom/picom.conf &
bash ~/.config/polybar/launch.sh &
dunst &
conky --daemonize &
udiskie &
fcitx5 &
xautolock -time 5 -locker 'bash ~/.config/myUtils/lock.sh' &
/bin/bash -c " sleep 3; /usr/bin/xmodmap ~/.config/myUtils/.xmodmap > ~/.config/myLogs/xmodmap.out"
