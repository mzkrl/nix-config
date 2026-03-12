#!/usr/bin/env bash

set -e

cd /etc/nixos

if ! git diff --quiet; then
    git add .
    git commit -m "nixos: $(date -Iseconds)"
    git push origin master
fi
