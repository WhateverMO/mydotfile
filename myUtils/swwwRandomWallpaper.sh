swww init
while true;
do
  ls -d ~/Pictures/wallpaper/* | sort -R | while read file;
  do
    swww img "$file" --transition-step 4 --transition-fps 40 --transition-type random
		time=RANDOM
		sleep $((30+$time%60))
  done
done
