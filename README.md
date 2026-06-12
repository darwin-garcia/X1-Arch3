# Custom Arch Linux 
Arch Linux + Hyprland + CachyOS LTS Kernel
Lenovo ThinkPad X1 Carbon Gen 8 




Si tienes una instalacion limpia sin entorno grafico instalado puedes ejecutar el siguiente comando desde la TTY:
* `sudo pacman -S hyprland hyprutils hyprwayland-scanner hyprlock hyprlang hypridle hyprpaper waybar ghostty kitty dolphin kvantum
grim slurp rofi-wayland ninja wayland-protocols 
libjpeg-turbo libwebp libjxl pango cairo pkgconf libglvnd
xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk
xdg-user-dirs xdg-utils meson ninja gobject-introspection gtk3 gtk-layer-shell gtk4 gjs
qt6-svg qt6ct qt6-wayland qt6-multimedia-ffmpeg qt5-wayland qt5ct qt5-wayland
wireplumber pipewire cmake cpio pkg-config git gcc mesa mako`

`yay -S aylurs-gtk-shell wireplumber libgtop bluez bluez-utils networkmanager dart-sass wl-clipboard brightnessctl upower gtksourceview3 libsoup3 swayosd-git`

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
* `sudo pacman -S audacious ristretto mpv galculator engrampa obs-studio inkscape gimp audacity`
* `yay -S system-monitoring-center`

### Gadgets de Terminal

* `sudo pacman -S conky glances fastfetch cava neovim ranger figlet`
* `yay -S neofetch unimatrix tty-clock bash-pipes`


Los siguientes ajustes deben estar incluidos en el archivo `$HOME/.config/hypr/hyprland.conf`. Puedes copiar o revisar el codigo fuente de la carpeta 📁`Hypr` de mi repositorio

## 🖼 Screenshots

## ⚙ My Settings (Mis Configuraciones)

📁: $USER/.config/

Probado en Junio 2026 👨‍💻 ©MMXXV. Darwin Garcia. 🇨🇴
