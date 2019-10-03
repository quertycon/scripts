#! /bin/sh
#HELE FILE IN .XINITRC ZETTEN
#INSTELLEN DAT HIJ ZIJN EIGEN INSTANCE KILLED

# checken of ze bestaan voor ze op te vragen
WALLPAPER=~/Pictures/god2.jpg


hsetroot -cover $WALLPAPER &
compton &
$(xbindkeys --poll-rc)
. ~/scripts/statusbar.sh