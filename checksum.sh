#!/usr/bin/bash
set -eu

printf "
1) genera il checksum
2) controlla il checksum
0) Annulla
"
read -n1 -r -s scelta
case "$scelta" in
    "1") find -L "$1" -type f -exec md5sum {} \; > checksum.md5;;
    "2") md5sum -c "$1";;
    *) echo "Operazione annullata";;
esac
