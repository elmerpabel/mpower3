#!/usr/bin/env bash
################################################################################
# epower.sh - envia comando a google
################################################################################
# direccion de google
web="https://script.google.com/macros/s/AKfycbzocdEL91in-LlXNETRzNPePkEnIcfQsTV3Lz-sYD9--GkxhRg/exec"
now_milisegundos=$(date +%s000)
power=$(cat /proc/power/active_pwr1)
now_utc=$(date -u '+%Y-%m-%d'T'%H:%M:%S'';')
parameter="?player=Amigo&msg="$now_utc$power
link=$web$parameter
wget -c --no-check-certificate $link 

