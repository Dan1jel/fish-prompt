#!/usr/bin/bash

bash -c "curl -H p:5 't:$(hostname) Terminal' -d 'Your command just finnished.' ntfy.sh/bejkon"
