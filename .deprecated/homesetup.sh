#!/usr/bin/env bash
xrdb (pwd)/.Xresources
xrandr --auto --output DP-1 --primary --mode 3840x2160 --scale 1x1 --left-of eDP-1
