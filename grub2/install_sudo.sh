sudo rm /etc/default/grub
sudo ln -s "$(pwd)/grub.now" /etc/default/grub
sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GrubDot
sudo grub-mkconfig  -o /boot/grub/grub.cfg
