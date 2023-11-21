#!/bin/bash

# monitor list
# using local file to store the monitor list
# monitor list file have two list (mirror and extend)
# mirror list
mirror_list_file="./mirror.txt"
# extend list
extend_list_file="./extend.txt"

# if the file is not exist, create it
if [ ! -f $mirror_list_file ]; then
    touch $mirror_list_file
fi
if [ ! -f $extend_list_file ]; then
    touch $extend_list_file
fi

# get the monitor list from file
mirror_list=$(cat $mirror_list_file)
extend_list=$(cat $extend_list_file)

# Get the monitor information
monitor_info=$(hyprctl monitors)

remove_headless_monitors() {
    # Loop through each line of the monitor information
    while IFS= read -r line; do
        # Check if the line contains "Headless"
        if [[ $line == *"HEADLESS"* ]]; then
            # Extract the monitor name
            local monitor_name=$(echo $line | awk '{print $2}')
            
            # If the monitor not in the mirror list and extend list, remove it
            if [[ $mirror_list != *"$monitor_name"* ]] && [[ $extend_list != *"$monitor_name"* ]]; then
                echo "Remove monitor: $monitor_name"
                hyprctl output remove $monitor_name
            fi
        fi
    done <<< "$monitor_info"
}

get_monitor_with_id_zero() {
    # Loop through each line of the monitor information
    while IFS= read -r line; do
        # Check if the line contains "ID 0"
        if [[ $line == *"ID 0"* ]]; then
            # Extract the monitor name
            local monitor_name=$(echo $line | awk '{print $2}')
            echo "Monitor with ID 0: $monitor_name"
            break
        fi
    done <<< "$monitor_info"
}

create_headless_monitor() {
    # Create a headless monitor
    hyprctl output create headless
    # update the monitor information
    monitor_info=$(hyprctl monitors)
    
}

# Call the functions
remove_headless_monitors
get_monitor_with_id_zero
create_headless_monitor

hyprctl monitors
