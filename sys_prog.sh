#!/bin/bash
# Система
# ------------------------------------------------------------------------------------------------------------
# обновление репозиториев
sudo pacman -Syu

# установка xorg
sudo pacman -S xorg-server xorg-xinit xorg-xinput xdg-utils

# установка шрифтов
sudo pacman -S awesome-terminal-fonts noto-fonts-cjk noto-fonts-emoji ttf-dejavu

# установка драйверов - alsa/intel/vulkan
sudo pacman -S alsa-lib alsa-utils alsa-plugins alsa-oss xf86-video-intel vulkan-intel

# ------------------------------------------------------------------------------------------------------------
# установка программ

# awesome -
sudo pacman -S awesome

# i3lock -
sudo pacman -S i3lock

# scrot -
sudo pacman -S scrot

# xclip -
sudo pacman -S xclip

# picom -
sudo pacman -S picom

# caja - 
sudo pacman -S caja 

# pluma -
sudo pacman -S pluma 

# mate-calc -
sudo pacman -S mate-calc 

# engrampa -
sudo pacman -S engrampa 

# zip -
sudo pacman -S zip 

# unzip -
sudo pacman -S unzip 

# unrar -
sudo pacman -S unrar 

# gvfs -
sudo pacman -S gvfs 

# gvfs-smb - 
sudo pacman -S gvfs-smb 

# rxvt-unicode -
sudo pacman -S rxvt-unicode 

# lxappearance - 
sudo pacman -S lxappearance 

# arc-icon-theme - 
sudo pacman -S arc-icon-theme 

# transmission-gtk - 
sudo pacman -S transmission-gtk 
