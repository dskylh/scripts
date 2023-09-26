#!/bin/bash

# Get the list of running applications
applications=$(wmctrl -l | awk '{print $1 " " $4 " " $NF}')

# Use rofi to display the list and select an application
selected_app=$(echo "$applications" | rofi -dmenu -i -p "Switch to:" | awk '{print $1}')

# Activate the selected application
wmctrl -ia "$selected_app"

