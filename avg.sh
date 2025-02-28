#!/usr/bin/bash
set -eu

find "$1" -ls | awk '{sum += $7; n++;} END {print sum/n;}'
