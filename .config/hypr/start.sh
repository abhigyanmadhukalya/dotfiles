#!/usr/bin/bash

# Wallpaper
hyprpaper &

# Applets
nm-applet --indicator &
blueman-applet &
firewall-applet &
kdeconnect-indicator &

# Status Bar
waybar &
dunst &

hyprpm reload &
/usr/lib/polkit-kde-authentication-agent-1 &
rog-control-center &
/opt/safing/portmaster/portmaster-start notifier --data=/opt/safing/portmaster &
