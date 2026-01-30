#!/usr/bin/env bash
set -e
cd $(dirname $0)
set dir=$(pwd)

## Installation
pacman -Syyu intel-ucode ntfs-3g

# load archlinuxcn
pacman -S archlinuxcn-keyring

# AUR Installer
pacman -S yay
yay -Syyu

# Compress tools
pacman -S 7zip unzip

# Programming basic
pacman -S gcc gdb cmake xmake clang base-devel lua python python-pip git lazygit
# Embedded
pacman -S arm-none-eabi-gcc arm-none-eabi-binutils arm-none-eabi-gdb arm-none-eabi-newlib openocd ninja

# Basic tools
pacman -S acpi nvidia-utils brightnessctl htop btop man-db bash-completion

# Editor and AI coder
pacman -S vim neovim 
yay -S opencode-bin

# Fonts
pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
pacman -S ttf-maplemono-nf-cn

# Input methods
pacman -S fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-pinyin-zhwiki
yay -S fcitx5-theme-wechat

# Improved tools (TUI)
pacman -S foot yazi tmux bat lsd ddgr duf fd fzf ripgrep task

# Video and audio
pacman -S ffmpeg mpv musicfox

# Something esle
pacman -S firefox v2ray v2raya localsend zotero-bin zathura zathura-pdf-mupdf bilibili-tui
yay -S linuxqq 

## Configuration

# Soft Link
mkdir -p ~/.config
ln -sf $dir/.bashrc ~/.bashrc
ln -sf $dir/.vimrc ~/.vimrc
ln -sf $dir/.tmux.conf ~/.tmux.conf
ln -sf $dir/nvim ~/.config/nvim
ln -sf $dir/foot ~/.config/foot
# ln -sf $dir/river ~/.config/river
