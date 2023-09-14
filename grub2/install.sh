rm /etc/default/grub
ln -s "$(pwd)/grub.now" /etc/default/grub
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GrubDot
grub-mkconfig  -o /boot/grub/grub.cfg
