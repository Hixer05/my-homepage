#!/usr/bin/env sh

for arg in "$@"; do
    if [ "$arg" = "cred" ]; then
        continue
    fi
    if [ -d "$arg" ]; then
        continue
    fi

    file="${arg}=@${arg}"
    curl -H "Authorization: Bearer $(cat cred)" -F $file "https://neocities.org/api/upload"
done
