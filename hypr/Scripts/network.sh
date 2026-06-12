#!/bin/bash
# network.sh — Muestra estado de red para hyprlock
# Requiere: nmcli (NetworkManager)

# ── Configuración ─────────────────────────────────────────────────────────────
# Controla si se muestra el SSID o solo "Connected"
# Puede sobreescribirse con $wifi-mode = true en hyprlock.conf
show_ssid=$(grep -oP '^\$wifi-mode\s*=\s*\K(true|false)' \
    "${HOME}/.config/hypr/hyprlock.conf" 2>/dev/null)
show_ssid=${show_ssid:-false}

# ── Verificar que nmcli esté disponible ───────────────────────────────────────
if ! command -v nmcli &>/dev/null; then
    echo "󰤮\tsin nmcli"
    exit 1
fi

# ── Modo avión ────────────────────────────────────────────────────────────────
# El modo avión deshabilita tanto WiFi como networking general en NetworkManager
networking=$(nmcli -t -f NETWORKING g 2>/dev/null)
if [[ "$networking" == "disabled" ]]; then
    echo "󰀝\tModo avión"
    exit 0
fi

# ── Ethernet ──────────────────────────────────────────────────────────────────
if nmcli -t -f DEVICE,TYPE,STATE dev 2>/dev/null \
        | grep -q 'ethernet:connected'; then
    echo "󰈁\tEthernet"
    exit 0
fi

# ── WiFi deshabilitado (sin modo avión) ───────────────────────────────────────
wifi_status=$(nmcli -t -f WIFI g 2>/dev/null)
if [[ "$wifi_status" != "enabled" ]]; then
    echo "󰤮\tWiFi apagado"
    exit 0
fi

# ── WiFi: buscar conexión activa ──────────────────────────────────────────────
# Usamos --escape no para evitar que ':' en el SSID rompa el parseo
wifi_info=$(nmcli --escape no -t -f ACTIVE,SSID,SIGNAL dev wifi 2>/dev/null \
    | grep '^yes:')

if [[ -z "$wifi_info" ]]; then
    echo "󰤮\tDesconectado"
    exit 0
fi

# Extraer SSID y señal de forma segura (campos fijos, --escape no garantiza sin ':' extra)
ssid=$(echo "$wifi_info" | cut -d':' -f2)
signal_raw=$(echo "$wifi_info" | cut -d':' -f3)

# Validar que signal_raw sea numérico
if ! [[ "$signal_raw" =~ ^[0-9]+$ ]]; then
    signal=0
else
    # Clamp 0–100
    signal=$(( signal_raw < 0 ? 0 : (signal_raw > 100 ? 100 : signal_raw) ))
fi

# ── Icono según intensidad de señal ───────────────────────────────────────────
# 0–24 → 󰤯, 25–49 → 󰤟, 50–74 → 󰤢, 75–99 → 󰤥, 100 → 󰤨
wifi_icons=("󰤯" "󰤟" "󰤢" "󰤥" "󰤨")
icon_index=$(( signal / 25 ))
# Clamp índice: signal=100 da índice 4 (válido), pero por seguridad:
(( icon_index > 4 )) && icon_index=4
wifi_icon="${wifi_icons[$icon_index]}"

# ── Salida ────────────────────────────────────────────────────────────────────
if [[ "$show_ssid" == "true" && -n "$ssid" ]]; then
    echo "$wifi_icon\t$ssid"
else
    echo "$wifi_icon\tConnected"
fi