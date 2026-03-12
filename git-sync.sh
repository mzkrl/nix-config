#!/usr/bin/env bash

set -e

cd /etc/nixos

if ! git diff --quiet; then
    sudo git add .
    sudo git commit -m "nixos: $(date -Iseconds)"
    sudo git push
fi
