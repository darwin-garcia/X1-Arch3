#!/bin/bash
# Velocidad de subida en la interfaz activa
IFACE=$(ip route | grep default | awk '{print $5}' | head -1)
if [ -z "$IFACE" ]; then echo "0 KB/s"; exit; fi

TX1=$(cat /sys/class/net/$IFACE/statistics/tx_bytes 2>/dev/null || echo 0)
sleep 1
TX2=$(cat /sys/class/net/$IFACE/statistics/tx_bytes 2>/dev/null || echo 0)

DIFF=$(( TX2 - TX1 ))
if [ $DIFF -lt 0 ]; then DIFF=0; fi

if [ $DIFF -ge 1048576 ]; then
  awk "BEGIN {printf \"%.1f MB/s\", $DIFF/1048576}"
elif [ $DIFF -ge 1024 ]; then
  awk "BEGIN {printf \"%.0f KB/s\", $DIFF/1024}"
else
  echo "${DIFF} B/s"
fi
