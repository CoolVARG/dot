#!/bin/bash

set -e
ask() {
  while true; do
    if [ "${2:-}" = "Y" ]; then
      prompt="Y/n"
      default=Y
    elif [ "${2:-}" = "N" ]; then
      prompt="y/N"
      default=N
    else
      prompt="y/n"
      default=
    fi
    read -p "$1 [$prompt] " REPLY </dev/tty
    if [ -z "$REPLY" ]; then
      REPLY=$default
    fi
    case "$REPLY" in
      Y*|y*) return 0 ;;
      N*|n*) return 1 ;;
    esac
  done
}
dir=`pwd`

if ask "Install symlink for ./config/htop?" Y; then
  ln -sfn ${dir}/dot/config/htop ${HOME}/.config/htop
fi

if ask "Install symlink for ./config/kitty?" Y; then
  ln -sfn ${dir}/dot/config/kitty ${HOME}/.config/kitty
fi

if ask "Install symlink for ./config/mako?" Y; then
  ln -sfn ${dir}/dot/config/mako ${HOME}/.config/mako
fi

if ask "Install symlink for ./config/mpd?" Y; then
  ln -sfn ${dir}/dot/config/mpd ${HOME}/.config/mpd
fi

if ask "Install symlink for ./config/qt5ct?" Y; then
  ln -sfn ${dir}/dot/config/qt5ct ${HOME}/.config/qt5ct
fi

if ask "Install symlink for ./config/redshift?" Y; then
  ln -sfn ${dir}/dot/config/redshift ${HOME}/.config/redshift
fi

if ask "Install symlink for .config/sway?" Y; then
  ln -sfn ${dir}/dot/config/sway ${HOME}/.config/sway
fi

if ask "Install symlink for .config/Thunar?" Y; then
  ln -sfn ${dir}/dot/config/Thunar ${HOME}/.config/Thunar
fi

if ask "Install symlink for .config/waybar?" Y; then
  ln -sfn ${dir}/dot/config/waybar ${HOME}/.config/waybar
fi

if ask "Install symlink for .config/wofi?" Y; then
  ln -sfn ${dir}/dot/config/wofi ${HOME}/.config/wofi
fi

if ask "Install symlink for ./config/picom.conf?" Y; then
  ln -sfn ${dir}/dot/config/picom.conf ${HOME}/.config/picom.conf
fi

if ask "Install symlink for .nano?" Y; then
  ln -sf ${dir}/dot/nano ${HOME}/.nano
fi

if ask "Install symlink for .ncmpcpp" Y; then
  ln -sf ${dir}/dot/ncmpcpp ${HOME}/.ncmpcpp
fi

if ask "Install symlink for .zshrc?" Y; then
  ln -sf ${dir}/dot/zshrc ${HOME}/.zshrc
fi

if ask "Install symlink for .nanorc?" Y; then
  ln -sf ${dir}/dot/nanorc ${HOME}/.nanorc
fi


ask() {
  while true; do
    if [ "${2:-}" = "Y" ]; then
      prompt="Y/n"
      default=Y
    elif [ "${2:-}" = "N" ]; then
      prompt="y/N"
      default=N
    else
      prompt="y/n"
      default=
    fi
    read -p "$1 [$prompt] " REPLY </dev/tty
    if [ -z "$REPLY" ]; then
      REPLY=$default
    fi
    case "$REPLY" in
      Y*|y*) return 0 ;;
      N*|n*) return 1 ;;
    esac
  done
}
