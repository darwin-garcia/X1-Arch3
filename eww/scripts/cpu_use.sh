#!/bin/bash
# Calcula uso real de CPU leyendo /proc/stat dos veces
read -r cpu user nice system idle iowait irq softirq steal < <(grep '^cpu ' /proc/stat)
total1=$((user + nice + system + idle + iowait + irq + softirq + steal))
idle1=$idle
sleep 0.5
read -r cpu user nice system idle iowait irq softirq steal < <(grep '^cpu ' /proc/stat)
total2=$((user + nice + system + idle + iowait + irq + softirq + steal))
idle2=$idle
diff_total=$((total2 - total1))
diff_idle=$((idle2 - idle1))
if [ $diff_total -gt 0 ]; then
  echo $(( (diff_total - diff_idle) * 100 / diff_total ))
else
  echo 0
fi
