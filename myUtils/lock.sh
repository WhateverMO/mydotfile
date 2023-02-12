#!/bin/bash

# Only exported variables can be used within the timer's command.
export PRIMARY_DISPLAY="$(xrandr | awk '/ primary/{print $1}')"

# Run xidlehook
xidlehook \
  --once \
  `# Don't lock when there's a fullscreen application` \
  --not-when-fullscreen \
  `# Don't lock when there's audio playing` \
  --not-when-audio \
  `# Dim the screen after 300 seconds, undim if user becomes active` \
  `# Undim & lock after 10 more seconds` \
  --timer 1 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1; betterlockscreen -l;killall xidlehook' '' \
  --timer 180 \
    'systemctl suspend;killall xidlehook' ''
