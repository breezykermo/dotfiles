#!/usr/bin/env bash

sudo cp /etc/X11/latest-xorg.conf /etc/X11/xorg.conf
sudo systemctl restart display-manager
