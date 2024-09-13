#!/bin/bash

killall -q pipewire
killall -q pipewire-pulse
killall -q wireplumber

/usr/bin/pipewire & /usr/bin/pipewire-pulse & /usr/bin/wireplumber
