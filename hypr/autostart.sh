#!/bin/bash

bash ~/.config/myUtils/swwwRandomWallpaper.sh &
udiskie &
fcitx5 &
killall foot &
foot --server &
sleep 1
killall xdg-desktop-portal-hyprland
killall xdg-desktop-portal-wlr
killall xdg-desktop-portal
/usr/lib/xdg-desktop-portal-hyprland &
sleep 2
/usr/lib/xdg-desktop-portal &

