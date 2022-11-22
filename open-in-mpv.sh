#!/bin/bash

CLIPBOARD=$(xclip -o)
if [[ "$CLIPBOARD" == *"youtube"* ]]; then
  notify-send "Youtube link found" "Opening in mpv"
  mpv $CLIPBOARD

elif [[ "$CLIPBOARD" == *"twitch"* ]]; then
  CHANNEL=$(echo "$CLIPBOARD" | cut -d'/' -f 4)
  notify-send "Twitch link found" "Opening with streamlink"
  streamlink $CLIPBOARD best &
  brave https://www.twitch.tv/popout/$CHANNEL/chat?popout= &
  
else
  notify-send "Link not found"
fi
