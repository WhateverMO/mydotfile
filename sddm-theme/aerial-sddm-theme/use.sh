#!/bin/bash

yay -S --noconfirm sddm gst-libav phonon-qt5-gstreamer gst-plugins-good qt5-quickcontrols qt5-graphicaleffects qt5-multimedia
git clone git@github.com:3ximus/aerial-sddm-theme.git
sudo mv aerial-sddm-theme /usr/share/sddm/themes
sudo rm /usr/share/sddm/themes/aerial-sddm-theme/theme.conf.user
cp ./theme.conf.user /usr/share/sddm/themes/aerial-sddm-theme/
mkdir /etc/sddm.conf.d/
cp ./sddm.conf /etc/sddm.conf.d/sddm.conf
systemctl disable display-manager.service
systemctl enable sddm
rm -rf ./aerial-sddm-theme/
