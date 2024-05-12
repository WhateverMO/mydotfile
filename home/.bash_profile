#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


# Added by Toolbox App
export PATH="$PATH:/home/zjj/.local/share/JetBrains/Toolbox/scripts"

export PATH="$PATH:/home/zjj/.local/bin"
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec Hyprland
fi
