#!/usr/bin/env bash

choice=$(printf "kill\nsuspend\nreboot\nshutdown" | rofi -dmenu -p "Select action" -lines 4)

case "$choice" in
    kill)
        target=$(ps -u "$USER" -o pid,comm,%cpu,%mem --sort=-%cpu | \
            rofi -dmenu -p "Kill process:" -lines 10)
        pid=$(awk '{print $1}' <<< "$target")
        [[ -n "$pid" ]] && kill "$pid"
        ;;
    suspend)
        slock && systemctl suspend -i
        ;;
    reboot)
        systemctl reboot -i
        ;;
    shutdown)
        shutdown now
        ;;
    *)
        exit 1
        ;;
esac

