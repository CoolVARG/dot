#!/bin/bash

# установка шрифтов
sudo pacman -S ttf-font-awesome ttf-dejavu ttf-opensans ttf-ubuntu-font-family ttf-roboto ttf-roboto-mono noto-fonts-cjk noto-fonts-emoji

# установка драйверов - alsa
sudo pacman -S pulseaudio pulseaudio-alsa pavucontrol pamixer alsa-utils

# ------------------------------------------------------------------------------------------------------------
# установка программ

# WM
sudo pacman -S xorg-xhost boost-libs sway swayidle swaylock swaybg waybar grim slurp mako gtk-layer-shell egl-wayland wayland-protocols wl-clipboard wofi xdg-desktop-portal-wlr xorg-xwayland acpi brightnessctl  dex tumbler

# zsh
sudo pacman -S pkgfile zsh zsh-completions zsh-syntax-highlighting nano-syntax-highlighting 

#проверка орфографии
sudo pacman -S hunspell aspell nuspell hspell libvoikko 
#словари
sudo pacman -S aspell-ru 

# pluma -
sudo pacman -S pluma 

# Thunar
sudo pacman -S xdg-user-dirs-gtk thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman 

# Create and modify archives
sudo pacman -S file-roller unrar p7zip

# gvfs-smb - 
sudo pacman -S gvfs-smb gvfs-mtp 

# terminal -
sudo pacman -S kitty 

# Агент аутентификации
sudo pacman -S polkit-gnome 

# gparted
sudo pacman -S gparted 

# Внешний вид
sudo pacman -S  lxappearance qt5ct gtk-engines gtk-engine-murrine capitaine-cursors papirus-icon-theme gnome-themes-extra 

# transmission-gtk - 
sudo pacman -S transmission-gtk 

# atril Просмотр документов PDF, DjVu, TIFF
sudo pacman -S atril 

# eom - Программа для просмотра изображений
sudo pacman -S eom 

# Калькулятор
sudo pacman -S galculator

# mpd - Гибкое, мощное серверное приложение для воспроизведения музыки
sudo pacman -S mpd 

# ncmpcpp - Почти точный клон ncmpc с некоторыми новыми функциями
sudo pacman -S ncmpcpp 

# mpc - Минималистский интерфейс командной строки для MPD
sudo pacman -S mpc 

# mpv - бесплатный кросс-платформенный медиа плеер с открытым исходным кодом
sudo pacman -S mpv youtube-dl 

# Gimp - Программа манипуляции с изображениями
sudo pacman -S gimp 

# Discord -
sudo pacman -S discord 

# firefox
sudo pacman -S firefox firefox-i18n-ru  

# Почтовый клиент с русификатором
sudo pacman -S thunderbird thunderbird-i18n-ru 

# Network-manager с парой допов
sudo pacman -S network-manager-applet networkmanager-openvpn networkmanager-pptp 

# htop
sudo pacman -S htop 

# QML based X11 and Wayland display manager
sudo pacman -S sddm qt5-svg qt5-quickcontrols2 qt5-graphicaleffects

#yay -S ttf-clear-sans
#yay -S nerd-fonts-hack
#yay -S otb-uw_ttyp0
#yay -S inv 
#yay -S qt5-styleplugins
#yay -S swaylock-fancy-git

