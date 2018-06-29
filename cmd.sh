#!/bin/sh

while sleep 1
do
    echo "Listening for modem"
    socat -v tcp-l:4000,fork,keepalive,nodelay,forever,reuseaddr /dev/ttyACM0,rawer,echo=0
    echo "Modem disconnected. Restarting."
done
