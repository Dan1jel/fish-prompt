#!/usr/bin/env bash

# curl -s --upload-file test.txxt https://transfer.sh/test.txxt -o curl.txt && ./test.sh

cat curl.txt
cat curl.txt | xclip -sel clip 2>/dev/null && echo || echo -e "\n(error copy to clipboard)"
rm -f curl.txt
#echo
#echo "(error copy to clipboard)"

