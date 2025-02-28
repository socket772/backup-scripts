#!/usr/bin/bash
set -eu

# RSYNC
rsync -aLvt --progress "$1" "$2/$(date +'%Y-%m-%d_%H-%M-%S')/"
