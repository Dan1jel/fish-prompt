#!/usr/bin/bash
# bash -c "curl -H 't:$(hostname) Terminal' -d 'Your command just finnished.' ntfy.sh/bejkon"

bash -c "curl -H 't:$(date +"%H:%M") $(date +"%y/%m/%d") - $(hostname)' -d 'Your command just finnished.

⚬ ffmpeg runtime: $((0 / 3600))h:$(((0 % 3600) / 60))m:$(((0 % 3600) % 60))s.
> $(/bin/ls -Art | tail -n 1)' ntfy.sh/bejkon"
