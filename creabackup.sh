#!/usr/bin/bash
set -eu

conferma () {
    printf "ne sei sicuro (y/N)
    "
    read -n1 -r -s isok
    case "$isok" in
    "y") return 0;;
    *) return 1;;
esac

}

printf "1) Copia in cartella formattata
2) Copia cartella senza rinomina
3) Copia cartella senza rinomina, CANCELLA DIFFERENZE
0) Annulla
"
read -n1 -r -s scelta
case "$scelta" in
    "1") cd "$1" && rsync -aviP "./" "$2/$(date +'%Y-%m-%d_%H-%M-%S')/";;
    "2") rsync -aviP "$1" "$2";;
    "3") conferma && rsync -aviP --delete "$1" "$2";;
    *) echo "Operazione annullata";;
esac
