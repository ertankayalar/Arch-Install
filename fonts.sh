#
# Fonts
#
mkdir -p ~/.local/share/fonts

if ! fc-list | grep -qi "CaskaydiaMono Nerd Font"; then
  cd /tmp
  wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaMono.zip
  unzip CascadiaMono.zip -d CascadiaFont
  cp CascadiaFont/CaskaydiaMonoNerdFont-Regular.ttf ~/.local/share/fonts
  cp CascadiaFont/CaskaydiaMonoNerdFont-Bold.ttf ~/.local/share/fonts
  cp CascadiaFont/CaskaydiaMonoNerdFont-Italic.ttf ~/.local/share/fonts
  cp CascadiaFont/CaskaydiaMonoNerdFont-BoldItalic.ttf ~/.local/share/fonts
  rm -rf CascadiaMono.zip CascadiaFont
  fc-cache
  cd -
fi

if ! fc-list | grep -qi "iA Writer Mono S"; then
  cd /tmp
  wget -O iafonts.zip https://github.com/iaolo/iA-Fonts/archive/refs/heads/master.zip
  unzip iafonts.zip -d iaFonts
  cp iaFonts/iA-Fonts-master/iA\ Writer\ Mono/Static/iAWriterMonoS-*.ttf ~/.local/share/fonts
  rm -rf iafonts.zip iaFonts
  fc-cache
  cd -
fi

# Install IBM Plex Mono Nerd Font
if ! fc-list | grep -qi "BlexMono Nerd Font"; then
  cd /tmp
  wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/IBMPlexMono.zip
  unzip IBMPlexMono.zip -d IBMPlexFont
  cp IBMPlexFont/BlexMonoNerdFont-*.ttf ~/.local/share/fonts
  rm -rf IBMPlexMono.zip IBMPlexFont
  fc-cache
  cd -
fi

# Install JetBrains Mono Nerd Font
if ! fc-list | grep -qi "JetBrainsMono Nerd Font"; then
  cd /tmp
  wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
  unzip JetBrainsMono.zip -d JetBrainsFont
  cp JetBrainsFont/JetBrainsMonoNerdFont-*.ttf ~/.local/share/fonts
  rm -rf JetBrainsMono.zip JetBrainsFont
  fc-cache
  cd -
fi

# Install Monaspace Nerd Font
if ! fc-list | grep -qi "MonaspiceNe Nerd Font"; then
  cd /tmp
  wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Monaspace.zip
  unzip Monaspace.zip -d MonaspaceFont
  cp MonaspaceFont/MonaspiceNeNerdFont-*.otf ~/.local/share/fonts
  cp MonaspaceFont/MonaspiceArNerdFont-*.otf ~/.local/share/fonts
  cp MonaspaceFont/MonaspiceKrNerdFont-*.otf ~/.local/share/fonts
  cp MonaspaceFont/MonaspiceRnNerdFont-*.otf ~/.local/share/fonts
  cp MonaspaceFont/MonaspiceXeNerdFont-*.otf ~/.local/share/fonts
  rm -rf Monaspace.zip MonaspaceFont
  fc-cache
  cd -
fi
