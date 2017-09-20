#!/bin/sh 
# note: notify-send is required, see libnotify-bin

# XXX do not notify if notification source has focus

delay="2000"

read line
summary="$line"
read line
msg="$line"
read line

if [ "$line" = "" ] && [ "$summary" != "" ]; then
    # Change the icon
    [ -x "$(which twmnc)" ] && twmnc -t "$summary" -c "$msg"
fi
