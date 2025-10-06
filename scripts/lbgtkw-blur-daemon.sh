#!/bin/bash
while true; do
    for wid in $(xprop -root _NET_CLIENT_LIST | sed -E 's/.*# (.*)/\1/' | tr ',' '\n'); do
        xprop -id "$wid" -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 2>/dev/null
    done
    sleep 2
done
