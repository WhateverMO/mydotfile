function fish_greeting -d "Greeting message on shell session start up"
    echo "Welcome! this is $(whoami)'s $(hostname)"
    echo ""
    if neofetch | grep -q kitty
        neofetch --kitty ~/Pictures/myPictures/neofetch.png
    if neofetch | grep -q foot
				neofetch --ascii "$(ascii-image-converter neofetch.png -b -W 60 --threshold 220)"
    else
        neofetch
    end
end
# function fish_greeting -d "Greeting message on shell session start up"
#     echo ""
#     echo -en "    __            " (welcome_message) "\n"
#     echo -en "  >(' )           " (show_date_info) "\n"
#     echo -en "    ) /           " "\n"
#     echo -en "   / (            " "Computer specific:\n"
#     echo -en "  /  `-----/      " (show_os_info) "\n"
#     echo -en "  \  ~=-  /       " (show_installation_date) "\n"
#     echo -en "~^~^~^~^~^~^~^    " (show_cpu_info) "\n"
#     echo -en "~^~^~^~^~^~^~^    " (show_ram_info) "\n"
#     echo -en "~^~^~^~^~^~^~^    " (show_mem_info) "\n"
#     echo ""
#     set_color normal
# end
#
# function welcome_message -d "Say welcome to user"
#     echo -en "Welcome! You are logged in "
#     set_color red
#     echo -en (whoami)
#     set_color normal
#     echo -en "@"
#     set_color red
#     echo -en (hostname)
#     set_color normal
# end
#
# function show_installation_date -d "Prints installation date"
#     set --local installation_date (stat / | tail -n 1 | awk '{print $2}')
#     set_color yellow
#     echo -en "Installation date: "
#     set_color 0F0
#     echo -en $installation_date
#     set_color normal
# end
#
# function show_date_info -d "Prints information about date"
#
#     set --local up_time (uptime | cut -d "," -f1 | cut -d "p" -f2 | sed 's/^ *//g')
#
#     set --local time (echo $up_time | cut -d " " -f2)
#     set --local formatted_uptime $time
#
#     switch $time
#     case "days" "day"
#         set formatted_uptime "$up_time"
#     case "min"
#         set formatted_uptime $up_time"utes"
#     case '*'
#         set formatted_uptime "$formatted_uptime hours"
#     end
#
#     echo -en "Today is "
#     set_color cyan
#     echo -en (date +%Y.%m.%d)
#     set_color normal
#     echo -en ", we are up and running for "
#     set_color cyan
#     echo -en "$formatted_uptime"
#     set_color normal
#     echo -en "."
# end
#
#
# function show_os_info -d "Prints operating system info"
#     set_color yellow
#     echo -en "OS: "
#     set_color 0F0  # green
#     set os_dist (uname -v | cut -d " " -f 3)" "(uname -r)
#     echo -en $os_dist
#     set_color normal
# end
#
#
# function show_cpu_info -d "Prints iformation about cpu"
#     set --local cores_n (lscpu | head -n 8 | tail -n 1 | awk '{print $4}')
#     set --local mhz_n (printf '%.0f\n' (lscpu | grep "CPU MHz" | awk '{print $3}'))
#     set --local cpu_type (grep "model name" /proc/cpuinfo | head -1 | cut -d ":" -f2)
#     set cpu_info "$cores_n cores, $mhz_n MHz"
#
#     set_color yellow
#     echo -en "CPU: "
#     set_color 0F0  # green
#     echo -en $cpu_info
#     set_color normal
# end
#
# function show_mem_info -d "Prints system memory information"
#     set --local total_memory (df -H | grep "/dev/" -m 1| awk '{print $3}' | cut -d "G" -f 1)"/"(df -H | grep "/dev/" -m 1 | awk '{print $2}' | cut -d "G" -f 1)"G"
#
#     set_color yellow
#     echo -en "Memory: "
#     set_color 0F0
#     echo -en $total_memory
#     set_color normal
# end
#
# function show_ram_info -d "Prints ram memory information"
#     set --local total_memory (free -h | grep "Mem" | awk '{print $3}')"/"(free -h | grep "Mem" | awk '{print $2}') "used."
#
#     set_color yellow
#     echo -en "Ram: "
#     set_color 0F0  # green
#     echo -en $total_memory
#     set_color normal
# end
