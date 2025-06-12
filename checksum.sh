#!/usr/bin/bash
set -eu

printf "1) genera il checksum
2) controlla il checksum
0) Annulla
"
read -n1 -r -s scelta
case "$scelta" in
    "1") cd "$1" && find -L ./ -type f -exec md5sum {} \; > checksum.md5.temp && mv checksum.md5.temp checksum.md5;;
    "2") cd "$1" && md5sum --quiet -c checksum.md5;;
    *) echo "Operazione annullata";;
esac
