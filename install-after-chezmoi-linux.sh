#!/bin/bash

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
