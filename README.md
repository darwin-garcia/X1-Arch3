# Custom Arch Linux 
Arch Linux + Hyprland + CachyOS LTS Kernel
Lenovo ThinkPad X1 Carbon Gen 8 

## Sistema

| Item | Detalle |
|---|---|
| **OS** | Arch Linux |
| **WM** | Hyprland 0.55+ |
| **DE base** | Hyprland standalone (usa componentes Qt/KDE sin el DE completo) |
| **GPU** | Intel UHD Graphics (Legacy) |
| **Pantalla** | 2560x1440 @ 60Hz · scale 1.25 |
| **Temas** | Arc Aurora Dark · Arch family (14 variantes) |
| **Íconos** | Slot-Beauty-Dark-Icons |
| **Cursor** | Breeze Light |
| **Fuentes** | SF Pro Display (Apple) · JetBrains Mono Nerd Font |

---

## Software incluido

### Core
| Paquete | Rol |
|---|---|
| `hyprland` | Hyprland. Compositor basado en Wayland |
| `waybar` | Barra de tareas superior |
| `awww` | Wallpaper con transiciones |
| `hyprlock` | Pantalla de bloqueo por defecto en Hyprland|
| `hypridle` | Daemon de inactividad |
| `wlogout` | Power menu |
| `hyprswitch` | `Alt + Tab` con preview de ventanas |
| `mako` | Centro de Notificaciones |
| `theme-switcher` | Cambio de tema completo con un atajo (waybar, borders, kitty, hyprlock, rofi, eww, swaync, wlogout) |
| `jq` | Requerido por theme-switcher para parsear JSON |
| `imagemagick` | Miniaturas en el theme/wallpaper picker |
| `matugen` | *(opcional)* Genera paleta de colores desde wallpaper para el tema Dynamic |
| `swaync` | Centro de notificaciones (tematizado) |

### Shell y terminal
| Paquete | Rol |
|---|---|
| `kitty` | Terminal |
| `zsh` | Shell |
| `oh-my-zsh` | Prompt (tema zen.toml activo) |
| `fastfetch` | Info del sistema al abrir terminal |

### Apps y utilidades
| Paquete | Rol |
|---|---|
| `rofi-wayland` | Launcher (Spotlight + Launchpad) |
| `mako` | Notificaciones |
| `eww` | Widgets de escritorio (reloj + sidebar con sysmonitor, clima, red y launchers de apps) |
| `dolphin` | File manager |
| `plasma-integration` | Integración KDE para apps Qt fuera de Plasma |
| `kde-cli-tools` | Herramientas KDE (Open With, etc.) |
| `pavucontrol` | Control de volumen |
| `handlr-regex` | Gestor de apps por defecto |

### Screenshots y portapapeles
| Paquete | Rol |
|---|---|
| `grim` + `slurp` | Capturas de pantalla |
| `wl-clipboard` + `cliphist` | Portapapeles Wayland |

## Atajos de teclado

### Básicos
| Atajo | Acción |
|---|---|
| `Super + Enter` | Terminal (kitty) |
| `Super + Space` | Launchpad (grid de apps) |
| `Super + A` | Spotlight (búsqueda rápida) |
| `Super + E` | Dolphin (archivos) |
| `Super + Q` / `Alt + F4` | Cerrar ventana |
| `Alt + Tab` | Switcher de ventanas (hyprswitch) |
| `Super + Tab` | Vista Exposé (todos los workspaces) |
| `Super + V` | Historial del portapapeles |
| `Super + Delete` / `Super + L` | Bloquear pantalla |
| `Super + S` | Guía de atajos (cheatsheet) |
| `Super + F1` | Theme picker (cambia tema completo) |
| `Super + W` | Wallpaper picker (wallpapers del tema activo) |
| `Super + Shift + E` | Power menu |
| `Super + Shift + M` | Cerrar sesión |

### Ventanas
| Atajo | Acción |
|---|---|
| `Super + Shift + Space` | Flotante on/off |
| `Super + F` | Pantalla completa |
| `Super + flechas / H J K L` | Mover foco |
| `Super + Shift + flechas` | Mover ventana |
| `Super + Ctrl + flechas` | Redimensionar (mantener presionado) |
| `Super + mouse izq` | Mover ventana flotante |
| `Super + mouse der` | Redimensionar flotante |

### Ventanas — Minimizar
| Atajo | Acción |
|---|---|
| `Super + M` | Minimizar ventana activa |
| `Super + N` | Restaurar última ventana minimizada |
| `Super + Ctrl + M` | Minimizar todas las ventanas |
| `Super + Ctrl + N` | Restaurar todas las ventanas |

### Workspaces
| Atajo | Acción |
|---|---|
| `Super + 1..9` | Cambiar workspace |
| `Super + Shift + 1..9` | Mover ventana a workspace |
| `Super + scroll` | Navegar workspaces |

Si tienes una instalacion limpia sin entorno grafico instalado puedes ejecutar el siguiente comando desde la TTY:

* `sudo pacman -S hyprland hyprutils hyprwayland-scanner hyprlock hyprlang hypridle hyprpaper waybar ghostty kitty dolphin kvantum
grim slurp rofi-wayland ninja wayland-protocols 
libjpeg-turbo libwebp libjxl libdbusmenu-gtk3 pango gdk-pixbuf2 cairo pkgconf libglvnd
xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk
xdg-user-dirs xdg-utils meson ninja gobject-introspection gtk3 gtk-layer-shell gtk4 gjs
qt6-svg qt6ct qt6-wayland qt6-multimedia-ffmpeg qt5-wayland qt5ct qt5-wayland
wireplumber pipewire cmake cpio pkg-config git gcc mesa mako awww jq`

`yay -S eww wireplumber libgtop bluez bluez-utils networkmanager wl-clipboard brightnessctl upower gtksourceview3 libsoup3 swayosd-git`

### Drivers y elementos del panel de control
`sudo pacman -S blueman bluez-utils usbutils fprintd libfprint imagemagick `

### 🖼 Temas e Iconos (Pacman y AUR) 
* `sudo pacman -S  breeze-gtk materia-gtk-theme papirus-icon-theme gtk-engine-murrine gtk-engines`
* `yay -S arc-gtk-theme qogir-icon-theme qogir-gtk-theme xcursor-breeze breezex-cursor-theme oxygen-cursors`

### 🀄 Fuentes instaladas (Pacman y AUR) 
Fuentes para iconos personalizados: [Nerd Fonts](https://www.nerdfonts.com/cheat-sheet)
* `sudo pacman -S noto-fonts noto-fonts-emoji noto-fonts-cjk otf-ipafont otf-hermit ttf-hanazono ttf-dejavu ttf-montserrat ttf-bitstream-vera ttf-ibm-plex ttf-anonymous-pro ttf-hack ttf-inconsolata ttf-input-nerd ttf-jetbrains-mono ttf-opensans ttf-font-awesome nerd-fonts adobe-source-sans-fonts gnu-free-fonts xorg-fonts-type1 `
* `yay -S otf-apple-fonts ttf-ms-fonts`

### 🗜 Extractor de Archivos

`sudo pacman -S engrampa xarchiver tar zip gzip bzip2 lrzip lz4 lzip unarj unrar unzip rpm-tools libarchive`

###  Apps Desktop utilizadas

* `sudo pacman -S audacious ristretto celluloid galculator obs-studio inkscape gimp audacity`
* `yay -S system-monitoring-center`

### Gadgets de Terminal

* `sudo pacman -S glances fastfetch cava neovim ranger figlet bashtop`
* `yay -S neofetch unimatrix tty-clock bash-pipes`

### Creacion de Contenido para YouTube

`sudo pacman -S opencv qt6-imageformats python-openai-whisper kdenlive blender cuda intel-compute-runtime`

### Maquina Virtual en Linux

Comprobar primero si el procesador admite virtualizacion
`grep -E 'vmx|svm' /proc/cpuinfo`
`LC_ALL=C lscpu`
Paquetes necesarios de instalacion
`sudo pacman -S --needed virt-manager qemu-desktop libvirt edk2-ovmf dnsmasq iptables-nft`
Soporte TPM
`sudo pacman -S --asdeps swtpm`
Habilitar el servicio de la maquina virtual
`sudo systemctl enable --now libvirtd.service`
Agregar al usuario actual al grupo de administradores de las maquinas virtuales
`sudo usermod -a -G libvirt,libvirt-qemu,kvm $USER`

Los siguientes ajustes deben estar incluidos en el archivo `$HOME/.config/hypr/hyprland.conf`. Puedes copiar o revisar el codigo fuente de la carpeta 📁`Hypr` de mi repositorio

## 🖼 Screenshots

## ⚙ My Settings (Mis Configuraciones)

Configura el fondo de pantalla en awww (sin datos de configuracion)
`awww img ~/.config/hypr/Wallpapers/Landscape.jpg`
Prueba el envio de notificaciones en tu Hyprland
`notify-send "Prueba" "Mako está funcionando"`

📁: $USER/.config/

Probado en Junio 2026 👨‍💻 ©MMXXV. Darwin Garcia. 🇨🇴
