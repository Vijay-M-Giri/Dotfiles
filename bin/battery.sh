#!/bin/bash

HEART='❤'

battery_info=`pmset -g batt`
#current_charge=$(echo $battery_info | grep -o '[0-9]\+%' | awk '{sub (/%/, "", $1); print $1}')
current_charge=$(cat /sys/class/power_supply/battery/capacity) # this is for WSL

if [[ $current_charge -lt 20 ]]; then
    #echo -n '#[fg=colour31]'
	echo -n '#[fg=red]'
elif [[ $current_charge -lt 50 ]]; then
    #echo -n '#[fg=colour32]'
    echo -n '#[fg=colour208]'
elif [[ $current_charge -lt 80 ]]; then
    #echo -n '#[fg=colour33]'
    echo -n '#[fg=yellow]'
else
    echo -n '#[fg=green]'
fi

echo -n "$HEART $current_charge%"
