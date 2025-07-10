# Development Tools & Libraries
#
yay -S --noconfirm --needed \
  cargo clang llvm mise \
  imagemagick \
  github-cli \
  lazygit lazydocker-bin

# mariadb-libs postgresql-libs \
#
#

# Install Ruby using gcc-14 for compatibility
yay -S --noconfirm --needed gcc14
mise settings set ruby.ruby_build_opts "CC=gcc-14 CXX=g++-14"

# Trust .ruby-version
mise settings add idiomatic_version_file_enable_tools ruby

if ! command -v nvim &>/dev/null; then
  yay -S --noconfirm --needed nvim luarocks tree-sitter-cli

  # Install LazyVim
  # rm -rf ~/.config/nvim
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  # cp -R ~/.local/share/omarchy/config/nvim/* ~/.config/nvim/
  # rm -rf ~/.config/nvim/.git
  # echo "vim.opt.relativenumber = false" >>~/.config/nvim/lua/config/options.lua
fi

sudo pacman -S --noconfirm \
  nodejs \
  npm \
  hugo \
  ruby

yay -S visual-studio-code-bin
