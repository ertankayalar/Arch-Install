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
