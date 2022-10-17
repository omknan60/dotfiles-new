#!/bin/bash

sudo pacman -Syy

sudo pacman -S yay neovim foot qutebrowser foot-terminfo wayland wlroots sway ttf-nerd-fonts-symbols-common ttf-sourcecodepro-nerd --needed

yay -S tofi i3status-rust-git --needed
