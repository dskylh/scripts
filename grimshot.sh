#!/bin/bash

SCREENSHOT="/tmp/screenshot.png"
grimshot save area $SCREENSHOT
if [ -f "$SCREENSHOT" ]; then
    URL=$(curl -F"file=@$SCREENSHOT" -Fsecret= http://0x0.st)
    wl-copy $URL
    notify-send "Screenshot uploaded to $URL"
fi
