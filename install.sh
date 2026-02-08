#!/bin/bash
# if not exists, ln it in one line
[ ! -e ~/.bash_profile ] && ln -sf "$(pwd)/home/.bash_profile" ~/.bash_profile
[ ! -e ~/.config/dunst ] && ln -sf "$(pwd)/dunst" ~/.config/dunst
[ ! -e ~/.config/fish ] && ln -sf "$(pwd)/fish" ~/.config/fish
[ ! -e ~/.config/foot ] && ln -sf "$(pwd)/foot" ~/.config/foot
[ ! -e ~/.config/ghostty ] && ln -sf "$(pwd)/ghostty" ~/.config/ghostty
[ ! -e ~/.config/bottom ] && ln -sf "$(pwd)/bottom" ~/.config/bottom
[ ! -e ~/.config/hypr ] && ln -sf "$(pwd)/hypr" ~/.config/hypr
[ ! -e ~/.config/kitty ] && ln -sf "$(pwd)/kitty" ~/.config/kitty
[ ! -e ~/.config/myUtils ] && ln -sf "$(pwd)/myUtils" ~/.config/myUtils
[ ! -e ~/.config/neofetch ] && ln -sf "$(pwd)/neofetch" ~/.config/neofetch
[ ! -e ~/.config/waybar ] && ln -sf "$(pwd)/waybar" ~/.config/waybar
[ ! -e ~/.config/wayvnc ] && ln -sf "$(pwd)/wayvnc" ~/.config/wayvnc
[ ! -e ~/.config/starship.toml ] && ln -sf "$(pwd)/starship/starship.toml" ~/.config/starship.toml
[ ! -e ~/.config/opencode ] && ln -sf "$(pwd)/opencode" ~/.config/opencode
