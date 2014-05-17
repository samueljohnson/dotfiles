#!/bin/bash

if [ $(xinput --list-props "ETPS/2 Elantech Touchpad" | grep Enabled | gawk -F ':' '{ print $2 }') -eq 1 ]; then
xinput --set-prop "ETPS/2 Elantech Touchpad" "Device Enabled" 0
else
xinput --set-prop "ETPS/2 Elantech Touchpad" "Device Enabled" 1
fi
