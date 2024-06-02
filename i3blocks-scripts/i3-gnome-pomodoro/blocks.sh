#!/usr/bin/env bash

if [[ "$BLOCK_BUTTON" == "1" ]]; then
  /home/taha/.local/bin/i3-gnome-pomodoro start-stop
fi
if [[ "$BLOCK_BUTTON" == 3 ]]; then
  /home/taha/.local/bin/i3-gnome-pomodoro toggle
fi

pomodoro=$(/home/taha/.local/bin/i3-gnome-pomodoro status)
if [[ $pomodoro ]]; then
  echo $pomodoro
  # check if pomodoro includes the sting PAUSED
else 
  echo ""
fi

