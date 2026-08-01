#!/bin/bash

# add a symlink to fd; should only be executed once
ln -s $(which fdfind) ~/.local/bin/fd
# add a symlink to bat; should only be executed once
ln -s /usr/bin/batcat ~/.local/bin/bat

# install diff-so-fancy (debian)
sudo add-apt-repository ppa:aos1/diff-so-fancy
sudo apt update
sudo apt install diff-so-fancy

# install bat themes
mkdir -p "$(bat --config-dir)/themes"
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Latte.tmTheme
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Frappe.tmTheme
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Macchiato.tmTheme
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme
bat cache --build

# install rustup, cargo, cargo binstall, tree-sitter-cli
curl https://sh.rustup.rs -sSf | sh
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash
cargo binstall tree-sitter-cli

# install go
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go -y

# install opencode
curl -fsSL https://opencode.ai/install | bash

# install neovim
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
