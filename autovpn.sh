#!/bin/bash
while true
do
    if  [[ "$(nmcli connection show --active | grep hk01)" == "" ]]; then
        echo "Disconnected, trying to reconnect..."
        sleep 1s 
        nmcli connection up hk01
    else
        echo "Already connected !"
    fi
    sleep 10
done
