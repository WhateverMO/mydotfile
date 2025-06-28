#!/bin/bash
# if not exists, ln it in one line
[ ! -e ~/.bash_profile ] && ln -sf "$(pwd)/home/.bash_profile" ~/.bash_profile
[ ! -e ~/.config/fish ] && ln -sf "$(pwd)/fish" ~/.config/fish
[ ! -e ~/.config/ghostty ] && ln -sf "$(pwd)/ghostty" ~/.config/ghostty
[ ! -e ~/.config/bottom ] && ln -sf "$(pwd)/bottom" ~/.config/bottom
[ ! -e ~/.config/starship.toml ] && ln -sf "$(pwd)/starship/starship.toml" ~/.config/starship.toml
