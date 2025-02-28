#!/usr/bin/bash
set -eu

printf "
1) file rw- folder rwx
2) file r-- folder rwx
3) file rw- folder r-x
4) file r-- folder r-x
0) Annulla
"
read -n1 -r -s scelta
case "$scelta" in
    "1") find "$1" -type f -exec chmod 600 {} + -o -type d -exec chmod 700 {} +;;
    "2") find "$1" -type f -exec chmod 400 {} + -o -type d -exec chmod 700 {} +;;
    "3") find "$1" -type f -exec chmod 600 {} + -o -type d -exec chmod 500 {} +;;
    "4") find "$1" -type f -exec chmod 400 {} + -o -type d -exec chmod 500 {} +;;
    *) echo "Operazione annullata";;
esac
