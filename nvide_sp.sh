#!/bin/bash

# Function to check if a process is running
is_process_running() {
  pgrep "$1" > /dev/null 2>&1
}

# Check if neovide is already running
if ! is_process_running "neovide"; then
  notify-send "Starting neovide..."
  neovide &
  sleep 5
else
  notify-send "Neovide is already running."
  sleep 1
fi

# Check if superproductivity is already running
if ! is_process_running "superproductivi"; then
  notify-send "Starting superproductivity..."
  ~/Applications/superProductivity-7.13.2_b1abcb2ecd95c55432c192e48245dce1.appimage &
else
  notify-send "Superproductivity is already running."
fi
  
  
