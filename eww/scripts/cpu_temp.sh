#!/bin/bash
# Busca temperatura en hwmon - igual que hwmon 3 temp 1 de conky
# Primero intenta hwmon3, si no encuentra busca en todos
TEMP_FILE="/sys/class/hwmon/hwmon3/temp1_input"
if [ -f "$TEMP_FILE" ]; then
  awk '{printf "%.0f", $1/1000}' "$TEMP_FILE"
  exit 0
fi

# Fallback: busca el sensor con nombre k10temp, coretemp, etc.
for hwmon in /sys/class/hwmon/hwmon*/; do
  name_file="${hwmon}name"
  if [ -f "$name_file" ]; then
    name=$(cat "$name_file")
    if [[ "$name" == "k10temp" || "$name" == "coretemp" || "$name" == "zenpower" ]]; then
      temp_file="${hwmon}temp1_input"
      if [ -f "$temp_file" ]; then
        awk '{printf "%.0f", $1/1000}' "$temp_file"
        exit 0
      fi
    fi
  fi
done

echo "N/A"
