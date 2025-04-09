#!/bin/zsh

sudo apt-get update

# Install basic tools
sudo apt-get install -y curl wireguard tmux fzf picocom ncdu net-tools ffmpeg xxd build-essential linux-headers-`uname -r` dkms swig flex bison powerstat cmake device-tree-compiler openssl xdd wl-clipboard
sudo apt-get install -y default-jre

# Install apps
sudo snap install telegram-desktop

# Install rye
if type rye &> /dev/null; then
    echo "Rye installed"
else
    curl -sSf https://rye.astral.sh/get | bash
fi

# Apply user conf
./apply.zsh

# Setup alacritty and zellij
sudo snap install alacritty --classic
sudo snap install zellij --classic

# Configure KDE manually
# Install apps manually:
#   * Zed
#   * Sublime Merge
#   * VirtualBox
#   * CLion
#   * Slack
