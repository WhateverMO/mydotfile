#!/bin/bash
while true
do
	feh --bg-fill --recursive --randomize ~/Pictures/wallpaper/*
	time=RANDOM
	sleep $((30+$time%60))
done
