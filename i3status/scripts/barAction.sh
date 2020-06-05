#!/bin/bash

iconsN=( "" "" )
iconsAc=( "" "" "" "" "" )
iconsDc=( "" "" "" "" "" "" "" "" "" "" )
iconsM=''

i3status | (read line; echo "$line"; read line ; echo "$line" ; read line ; echo "$line" ; while true
do
  read line

# Nebo
CNEBO=$(curl -s https://nebo.live/ru/krs | grep -Po "(?<=(92.958275)).*(?<=(АПН «Красноярск-Кировский»</a>))" | grep -Po "(?<=(, )).*(?=,)")
(($CNEBO > 0)) || CNEBO=$(echo "n/a")
if [ $CNEBO -gt 35 ]; then
    CN_ICON=${iconsN[1]}
else
    CN_ICON=${iconsN[0]}
fi

# Memory
MEM=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')

# Battery
BAT_STATE=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/state/{print $2}')
BAT_PERC=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage/{print $2}' | tr -d %)

# Charging icons
if [ $BAT_STATE = 'charging' ]; then
    i=$((BAT_PERC/20))
    BAT_ICON=${iconsAc[$i]}
# Fully charged icon
elif [ $BAT_STATE = 'fully-charged' ]; then
    BAT_ICON=''
# Discharging icons
else
    # For 100% battery
    if [ $BAT_PERC -eq 100 ]; then
    BAT_ICON=${iconsDc[9]}
# For below 100% battery
else
    i=$((BAT_PERC/10))
    BAT_ICON=${iconsDc[$i]}
    fi
fi

echo ",[{\"full_text\":\"${CN_ICON} ${CNEBO}\" },{\"full_text\":\"${BAT_ICON} $BAT_PERC%\" },{\"full_text\":\"${iconsM} ${MEM}\" },${line#,\[}"

# Update interval
sleep 3

done)

exit 0
