#!/usr/bin/bash

bash -c "curl -H 't:$(hostname) Terminal' -d 'Your command just finnished.' ntfy.sh/bejkon"
