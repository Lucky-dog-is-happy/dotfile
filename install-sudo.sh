#!/usr/bin/env bash
set -e

if [ $EUID -ne 0 ]; then
    echo "Please sudo this script"
    exit 1
fi

failed=()

install() {
    for pkg in "$@"; do
        echo "Install: $pkg"
        if pacman -S --noconfirm --needed "$pkg"; then
            echo " Success"
        else
            echo " Failed"
            failed+=("$pkg")
        fi
    done
}

cd $(dirname $0)
dir=$(pwd)

## Installation
pacman -Syyu 

# Base
install archlinuxcn-keyring intel-ucode ntfs-3g

# AUR Installer
install yay

# Compress tools
install 7zip unzip

# Programming basic
install gcc gdb cmake xmake clang base-devel perl strace lua python python-pip python-pipx git lazygit
# Embedded
install arm-none-eabi-gcc arm-none-eabi-binutils arm-none-eabi-gdb arm-none-eabi-newlib openocd ninja

# Basic tools
install acpi nvidia-utils brightnessctl htop btop man-db bash-completion

# Editor and AI coder
install vim neovim 

# Fonts
install noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
install ttf-maplemono-nf-cn

# Input methods
install fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-pinyin-zhwiki

# Improved tools (TUI)
install foot yazi tmux bat lsd ddgr duf fd fzf ripgrep task

# Video and audio
install ffmpeg mpv musicfox

# Something esle
install firefox v2ray v2raya localsend zotero-bin zathura zathura-pdf-mupdf bilibili-tui

if [ ${#failed[@]} -gt 0 ]; then
    echo "${failed[*]} Failed!"
else
    echo "All Success"
fi

## Configuration

# Soft Link
mkdir -p ~/.config
ln -sf "$dir/.bashrc" ~/.bashrc
ln -sf "$dir/.vimrc" ~/.vimrc
ln -sf "$dir/.tmux.conf" ~/.tmux.conf
ln -sf "$dir/nvim" ~/.config/nvim
ln -sf "$dir/foot" ~/.config/foot
ln -sf "$dir/.icons" ~/.icons
# ln -sf $dir/river ~/.config/river
