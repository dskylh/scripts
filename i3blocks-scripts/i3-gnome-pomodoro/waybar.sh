
#!/usr/bin/env bash

pomodoro=$(i3-gnome-pomodoro status --format=waybar --show-seconds)
if [[ -z "$pomodoro" ]]; then
  echo '{"class": "", "text": " ", "tooltip": "Paused"}'

  # check if pomodoro includes the sting PAUSED
else 
  echo $pomodoro
fi

