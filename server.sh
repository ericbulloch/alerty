#!/bin/bash

while true; do
    line="$(netcat -l -p 15450)"
    # notify-send [OPTION...] <SUMMARY> [BODY] - create a notification
    # -t Specifies the timeout in milliseconds at which to expire the notification.
    # -a Specifies the app name for the icon
    if [ -z "$line" ]; then
        continue
    fi
    notify-send -t 1000 -a "Alerty" "Status Report" "$line"
done
