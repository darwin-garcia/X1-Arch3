#!/bin/bash
# Velocidad de descarga en la interfaz activa
IFACE=$(ip route | grep default | awk '{print $5}' | head -1)
if [ -z "$IFACE" ]; then echo "0 KB/s"; exit; fi

RX1=$(cat /sys/class/net/$IFACE/statistics/rx_bytes 2>/dev/null || echo 0)
sleep 1
RX2=$(cat /sys/class/net/$IFACE/statistics/rx_bytes 2>/dev/null || echo 0)

DIFF=$(( RX2 - RX1 ))
if [ $DIFF -lt 0 ]; then DIFF=0; fi

if [ $DIFF -ge 1048576 ]; then
  awk "BEGIN {printf \"%.1f MB/s\", $DIFF/1048576}"
elif [ $DIFF -ge 1024 ]; then
  awk "BEGIN {printf \"%.0f KB/s\", $DIFF/1024}"
else
  echo "${DIFF} B/s"
fi
