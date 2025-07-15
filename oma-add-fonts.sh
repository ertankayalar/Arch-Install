#
# Nerd Fonts
#
mkdir -p ~/.local/share/fonts

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
