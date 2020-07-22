#!/usr/bin/env bash

rm /etc/X11/xorg.conf
sudo systemctl restart display-manager
