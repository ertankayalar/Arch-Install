#!/bin/bash
# omarchy den eklenecek diğer uygulamaları kontrol edelim

# Arch Linux Application Installation Script
# This script installs a set of common applications for productivity and development.

set -e
# Ensure yay (AUR helper) is installed
if ! command -v yay &>/dev/null; then
  echo "yay not found. Installing yay (AUR helper)..."
  sudo pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si --noconfirm
  cd ..
  rm -rf yay
fi

echo "Updating system packages..."
sudo pacman -Syu --noconfirm

echo "Installing official repository packages..."
sudo pacman -S --noconfirm \
  neovim \
  ruby \
  code \
  obsidian \
  alacritty \
  nextcloud-client

#brave \
# thunderbird \
# gimp \
# inkscape \
# libreoffice-fresh \

# python \

echo "Installing AUR packages..."
yay -S --noconfirm \
  spotify \
  signal-desktop \
  lazydocker \
  lazygit \
  google-chrome \
  anydesk-bin \
  dropbox \
  zoom \
  localsend

echo "Installation completed successfully!"

sudo pacman -S --noconfirm \
  code \
  nodejs \
  npm \
  hugo \
  ruby

yay -S visual-studio-code-bin
