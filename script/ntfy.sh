#!/usr/bin/bash
# bash -c "curl -H 't:$(hostname) Terminal' -d 'Your command just finnished.' ntfy.sh/bejkon"

SECONDS=0

sleep 5

duration=$SECONDS

bash -c "curl -H 't:$(date +"%H:%M") $(date +"%y/%m/%d") - $(hostname)' -d 'Your command just finnished.

⚬ ffmpeg runtime: $(($duration / 3600))h:$((($duration % 3600) / 60))m:$((($duration % 3600) % 60))s.
> $(/bin/ls -Art | tail -n 1)' ntfy.sh/bejkon"
