#!/bin/bash

## suspend after 10 minutes (600000 ms)

while true; do
    idle_ms=$(xprintidle)

    ## if idle >= 600000 milliseconds
    if [ "$idle_ms" -ge 600000 ]; then
        systemctl suspend
    fi

    sleep 10
done

