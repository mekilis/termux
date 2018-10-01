#!/bin/bash

echo "Step 1: Installing core packages..."

pkg install curl git neovim python python-dev cmake nodejs ruby golang coreutils termux-api termux-exec termux-tools grep tree ncurses-utils openssh tmux neofetch

echo "Step 2: Setting up home directories..."
cd ~
mkdir -p Desktop Documents Downloads Music temp Videos work


echo "Step 3: Setting up NeoVim..."

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip install neovim
# Update binaries manually.

echo "Step 4: Setting up dot files..."
cd ~/temp && git clone https://github.com/mekilis/termux.git && cp ./termux/bashrc ~/.bashrc && mkdir -p ~/config/nvim/ && cp ./termux/init.vim ~/.config/nvim/init.vim

echo "All done!"
