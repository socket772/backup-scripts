#!/usr/bin/bash
set -eu

script_list=("avg.sh" "checksum.sh" "creabackup.sh" "dircomp.sh" "rchmod.sh")

for FILE in "${script_list[@]}"
do
    cp -vf "${FILE}" "$1"
done
