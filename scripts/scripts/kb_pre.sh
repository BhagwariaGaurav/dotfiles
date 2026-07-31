#!/usr/bin/env bash
hyprctl eval 'hl.config({ input = { kb_layout = "us,us,ru", kb_variant = ",colemak_dh," } })' \
  && notify-send "Hyprland" "Pre-launch keyboard config applied" \
  || notify-send -u critical "Hyprland" "Post-launch keyboard config FAILED"
