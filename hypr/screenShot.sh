#! /bin/bash
region(){
	grim -g "$(slurp)" ~/nowScreenShot.png
	if [[ $? != 1 ]]; then
		swappy -f ~/nowScreenShot.png 
	fi
}

all(){
	grim -l 0 ~/nowScreenShot.png && swappy -f ~/nowScreenShot.png 
}

if [[ "$1" == "--region" ]]; then
	region
elif [[ "$1" == "--all" ]]; then
	all
fi
