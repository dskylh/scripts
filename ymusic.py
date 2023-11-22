#!/usr/bin/python
import os
import sys
import dbus

try:
    bus = dbus.SessionBus()
    youtube = bus.get_object("org.mpris.MediaPlayer2.youtubemusic", "/org/mpris/MediaPlayer2")

    if os.environ.get("BLOCK_BUTTON"):
        control_iface = dbus.Interface(youtube, "org.mpris.MediaPlayer2.Player")
        if os.environ["BLOCK_BUTTON"] == "1":
            control_iface.Previous()
        elif os.environ["BLOCK_BUTTON"] == "2":
            control_iface.PlayPause()
        elif os.environ["BLOCK_BUTTON"] == "3":
            control_iface.Next()

    youtube_iface = dbus.Interface(youtube, "org.freedesktop.DBus.Properties")
    props = youtube_iface.Get("org.mpris.MediaPlayer2.Player", "Metadata")

    if sys.version_info > (3, 0):
        print(str(props["xesam:artist"][0]) + " - " + str(props["xesam:title"]))
    else:
        print(props["xesam:artist"][0] + " - " + props["xesam:title"]).encode("utf-8")
    exit
except dbus.exceptions.DBusException:
    exit
