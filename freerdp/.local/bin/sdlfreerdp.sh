#!/bin/bash

RDP_PASSWORD=$(zenity --password --title="RDP Password" --text="Enter password for RDP session:")

if [ -n "$RDP_PASSWORD" ]; then
    SDL_VIDEODRIVER=wayland sdl-freerdp3 /v:a-mgmt-atm.loc.ipfdd.de:3389 /u:a_atmanspacher /p:"$RDP_PASSWORD" +dynamic-resolution /kbd:layout:0x0407 +home-drive /d:LOC &
fi
