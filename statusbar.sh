#! /bin/sh

F="|"

update() {
    RAM=$(free -h | awk '/^Mem:/ {print $3}' | sed 's/^/💾 /')

    VOLUME=$(amixer get Master | grep -o "[0-9]*%" | sed 's/^/🔊 /; s/%//')

    BATTERY=$(acpi -b | awk '{print $4}' | sed -r 's/^/ϟ /; s/,//; s/%//')

    DATE=$(date | awk '{print $3" " $2" " $4}' | sed -r 's/.{3}$//')

    xsetroot -name " $RAM $F $VOLUME $F $BATTERY $F $DATE "
}

while true; do

    update
    sleep 1
done
