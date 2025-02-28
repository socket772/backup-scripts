#!/usr/bin/bash
set -eu

DIR1="${1%/}/"
DIR2="${2%/}/"

diff \
  <(find "$DIR1" -type d -printf "%k %p\n" | sed -e "s|$DIR1||" | sort -k2) \
  <(find "$DIR2" -type d -printf "%k %p\n" | sed -e "s|$DIR2||" | sort -k2)
