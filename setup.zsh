#!/bin/zsh

sudo apt-get update
sudo apt-get upgrade

# Install basic tools
sudo apt-get install -y curl wireguard tmux fzf picocom ncdu net-tools ffmpeg
sudo apt-get install -y default-jre

# Install apps
sudo apt-get install -y telegram-desktop

# Install rye
curl -sSf https://rye.astral.sh/get | bash

# Apply user conf
./apply.zsh

# Setup tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
# And then enter (prefix + I) inside tmux to install plugins!

# Configure KDE manually
# Install apps manually: CLion, VirtualBox, Zed, etc
