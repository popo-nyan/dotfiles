#!/bin/bash

killall -q pipewire
killall -q pipewire-pulse
killall -q wireplumber
killall -q pipewire-launch.sh

/usr/bin/pipewire & /usr/bin/pipewire-pulse & /usr/bin/wireplumber
