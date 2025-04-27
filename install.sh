#!/bin/bash
# if not exists, ln it in one line
[ -f ~/.bash_profile ] && ln -sf "$(pwd)/home/.bash_profile" ~/.bash_profile
[ -f ~/.config/dunst ] && ln -sf "$(pwd)/dunst" ~/.config/dunst
[ -f ~/.config/fish ] && ln -sf "$(pwd)/fish" ~/.config/fish
[ -f ~/.config/foot ] && ln -sf "$(pwd)/foot" ~/.config/foot
[ -f ~/.config/hypr ] && ln -sf "$(pwd)/hypr" ~/.config/hypr
[ -f ~/.config/kitty ] && ln -sf "$(pwd)/kitty" ~/.config/kitty
[ -f ~/.config/myUtils ] && ln -sf "$(pwd)/myUtils" ~/.config/myUtils
[ -f ~/.config/neofetch ] && ln -sf "$(pwd)/neofetch" ~/.config/neofetch
[ -f ~/.config/waybar ] && ln -sf "$(pwd)/waybar" ~/.config/waybar
[ -f ~/.config/wayvnc ] && ln -sf "$(pwd)/wayvnc" ~/.config/wayvnc
[ -f ~/.config/starship.toml ] && ln -sf "$(pwd)/starship/starship.toml" ~/.config/starship.toml
