#!/bin/bash
# Genera lista de top procesos con columnas fijas:
# NAME(14) PID(7) CPU%(6) MEM%(6)
ps aux --sort=-%cpu --no-headers | awk 'NR<=7 {
  # Extrae solo el nombre del proceso (sin ruta)
  n = $11; sub(".*/","",n);
  # Trunca a 13 chars
  if (length(n) > 13) n = substr(n,1,13);
  # Formatea columnas con ancho fijo
  printf "%-14s %6s %6s %6s\n", n, $2, $3, $4
}'
