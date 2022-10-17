#!/bin/bash

sudo pacman -Syy

sudo pacman -S yay neovim foot qutebrowser foot-terminfo wayland wlroots sway ttf-nerd-fonts-symbols-common ttf-sourcecodepro-nerd --needed

yay -S tofi i3status-rust-git --needed

git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cd ~/dotfiles-new

stow nvim foot i3status sway qutebrowser 
