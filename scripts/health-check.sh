#!/usr/bin/env bash

url="http://localhost"

if status=$(curl --silent --show-error --output /dev/null \
    --write-out '%{http_code}' --max-time 5 "$url"); then

    if [ "$status" = "200" ]; then
        echo "PASS: Website responded with HTTP 200."
        exit 0
    else
        echo "FAIL: Website responded with HTTP $status."
        exit 1
    fi
else
    echo "FAIL: Could not reach the website."
    exit 1
fi