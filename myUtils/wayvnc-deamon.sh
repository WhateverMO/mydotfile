# if wayvnc is not running, start it
# check it every 5 seconds

while true
do
    if ! pgrep -x "wayvnc" > /dev/null
    then
        wayvnc -ro eDP-1 0.0.0.0 5900
    fi
    sleep 5
done
