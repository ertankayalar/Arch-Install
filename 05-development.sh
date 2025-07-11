# Development Tools & Libraries
#
yay -S --noconfirm --needed \
  cargo clang llvm mise \
  github-cli \
  lazygit lazydocker-bin

# mariadb-libs postgresql-libs \
#
#  imagemagick \
#

#!/bin/sh
# Add mise activate to fish config

mkdir -p "$HOME/.config/fish"
line='mise activate fish | source'

if ! grep -Fxq "$line" "$HOME/.config/fish/config.fish" 2>/dev/null; then
  echo "$line" >>"$HOME/.config/fish/config.fish"
fi

# Install Ruby using gcc-14 for compatibility
yay -S --noconfirm --needed gcc14
mise settings set ruby.ruby_build_opts "CC=gcc-14 CXX=g++-14"

# Trust .ruby-version
mise settings add idiomatic_version_file_enable_tools ruby

mise install nodejs@latest
mise install npm@latest
mise install hugo@latest
mise install ruby@latest

mise use nodejs@latest
mise use npm@latest
mise use hugo@latest
mise use ruby@latest

# fish completions for cashyos
# mise completions bash >~/.config/bash_completion.d/mise.sh
mise completions fish >~/.config/fish/completions/mise.fish
