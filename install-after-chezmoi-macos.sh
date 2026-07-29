#!/bin/bash

# install rustup, cargo, tree-sitter-cli
# cargo-binstall already installed via brew
curl https://sh.rustup.rs -sSf | sh
cargo binstall tree-sitter-cli
