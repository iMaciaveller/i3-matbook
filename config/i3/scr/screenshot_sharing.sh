#!/bin/bash

fileDate=`date +%Y-%m-%d-%H-%M-%S`
machineName=`hostname`
fileName=".png"
FILENAME=$fileDate"-"$machineName$fileName
SHORT=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 7 | head -n 1)
FILENAMESHORT=$SHORT$fileName
dst="home.totmin.ru"
dstPath="/"
dstAbs="/var/www/sharing.totmin.ru/"
user="mat"

import ~/screenshots/$FILENAMESHORT
paplay /usr/share/sounds/MIUI/stereo/camera-shutter.ogg

scp -C -P10122 ~/screenshots/$FILENAMESHORT $user@$dst:$dstAbs$dstPath 
echo "http://sharing.totmin.ru/"$FILENAMESHORT | xclip -i -selection clipboard
rm $FILENAMESHORT

paplay /usr/share/sounds/MIUI/stereo/screen-capture.ogg

exit 0
