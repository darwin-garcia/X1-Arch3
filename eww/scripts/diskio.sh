#!/bin/bash
# Lee velocidad de disco (equivalente a ${diskio} de conky)
DISK=$(lsblk -dno NAME | grep -v loop | head -1)
if [ -z "$DISK" ]; then echo "N/A"; exit; fi

R1=$(cat /sys/block/$DISK/stat 2>/dev/null | awk '{print $3}')
W1=$(cat /sys/block/$DISK/stat 2>/dev/null | awk '{print $7}')
sleep 0.5
R2=$(cat /sys/block/$DISK/stat 2>/dev/null | awk '{print $3}')
W2=$(cat /sys/block/$DISK/stat 2>/dev/null | awk '{print $7}')

R_KB=$(( (R2 - R1) / 2 ))
W_KB=$(( (W2 - W1) / 2 ))
echo "R: ${R_KB} KB/s  W: ${W_KB} KB/s"
