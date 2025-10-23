!/bin/sh

Load Xresources
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

setxkbmap -option altwin:swap_alt_win

exec i3
