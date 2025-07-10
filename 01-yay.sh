# Ensure yay (AUR helper) is installed
if ! command -v yay &>/dev/null; then
  sudo pacman -S --needed yay
fi
