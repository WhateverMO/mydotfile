#!/bin/bash

bash ~/.config/myUtils/swwwRandomWallpaper.sh &
udiskie &
fcitx5 &
killall foot &
sleep 1
foot --server &
dunst &
sleep 1
killall xdg-desktop-portal-hyprland
killall xdg-desktop-portal-wlr
killall xdg-desktop-portal
/usr/lib/xdg-desktop-portal-hyprland &
sleep 2
/usr/lib/xdg-desktop-portal &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#clash-verge &
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
