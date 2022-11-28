#!/bin/bash

echo "blacklist hid_uclogic" | sudo tee -a /etc/modprobe.d/blacklist.conf
sudo rmmod hid_uclogic
