#!/usr/bin/bash

# Wallpaper
hyprpaper &

# Applets
nm-applet --indicator &
blueman-applet &

fcitx5 &

gnome-keyring-daemon --start --components=secrets &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Status Bar
waybar &
swaync &

hyprpm reload &
rog-control-center &
/opt/safing/portmaster/portmaster-start notifier --data=/opt/safing/portmaster &
