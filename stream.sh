#!/bin/bash
cd /home/taha/Downloads/KeyOverlay-ubuntu-latest/
/home/taha/Downloads/KeyOverlay-ubuntu-latest/KeyOverlay &
cd /home/taha/Downloads/gosumemory_linux_amd64/
source /home/taha/Downloads/gosumemory_linux_amd64/ppcount.sh &
python /home/taha/coding/web/twitch-np/main.py
