#! /bin/bash
region(){
	grim -l 0 ~/tempScreenShot.png && hyprctl dispatch exec "imv -f ~/tempScreenShot.png" && grim -g "$(slurp)" ~/nowScreenShot.png && kill -9 $(pgrep imv | tail -n 1) && swappy -f ~/nowScreenShot.png 
}

all(){
	grim -l 0 ~/tempScreenShot.png && cp ~/tempScreenShot.png ~/nowScreenShot.png && swappy -f ~/nowScreenShot.png 
}

if [[ "$1" == "--region" ]]; then
	region
elif [[ "$1" == "--all" ]]; then
	all
fi
