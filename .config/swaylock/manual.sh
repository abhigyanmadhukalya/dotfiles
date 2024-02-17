#!/usr/bin/env bash

original_dir="$(pwd)"

cd "$(dirname "$0")" || exit

swaylock \
	--effect-blur 7x5 \
	--clock \
	--indicator-radius 160 \
	--indicator-thickness 15 \
	--font 'JetBrains Mono Nerd Font' \
	--ring-color 313244 \
	--ring-clear-color a6e3a1 \
	--ring-wrong-color f38ba8 \
	--inside-color 1e1e2e \
	--text-color cdd6f4 \
	--key-hl-color a6e3a1 \
	--bs-hl-color f38ba8 \
	--inside-clear-color 94e2d5 \
	--inside-ver-color b6d1fc \
	--inside-wrong-color f5c2e7 \
	--ring-ver-color 74c7ec \
	--line-uses-ring \
	--text-wrong-color 1e1e2e \
	--image ~/Pictures/1dead40c8d7b8ffa15de10120c8cd451.jpg \
	--daemonize
