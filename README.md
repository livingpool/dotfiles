# livingpool's dotfiles

## Setup
Install `brew` for macOS. Install a terminal emulator. \
For linux, run `install-after-chezmoi-linux.sh` after `chezmoi apply`. \
For macOS, run `install-after-chezmoi-macOS.sh` after `chezmoi apply`. \

Install all tmux plugins by `ctrl+a` + `shift+i`. \

## Resources
- [Window management on macOS](https://youtu.be/DBifQv9AYhc?si=XBOvsDRoEug2BKhP); karabiner-elements is no longer needed as raycast has hyper key built in.

## Known bugs
- [markdown-preview.nvim tslib not found](https://github.com/iamcco/markdown-preview.nvim/issues/148#issuecomment-1921780253); run `npm install` at plugin location: `~/.local/share/nvim/lazy/markdown-preview.nvim/`
