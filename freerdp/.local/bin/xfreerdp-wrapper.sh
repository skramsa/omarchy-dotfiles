#!/bin/bash

RDP_PASSWORD=$(zenity --password --title="RDP Password" --text="Enter password for RDP session:")

if [ -n "$RDP_PASSWORD" ]; then
    xfreerdp /v:a-mgmt-atm.loc.ipfdd.de:3389 /u:a_atmanspacher /p:"$RDP_PASSWORD" +f /smart-sizing:2560x1440 /drive:/home/samsa,Local /kbd:layout:0x0407 /sound /d:LOC &
fi
