#!/bin/zsh

sudo apt-get update

# Install basic tools
sudo apt-get install -y curl wireguard tmux fzf picocom ncdu net-tools ffmpeg xxd build-essential linux-headers-`uname -r` dkms swig flex bison tlp powerstat
sudo apt-get install -y default-jre

# Install apps
sudo apt-get install -y telegram-desktop

# Install rye
if type rye &> /dev/null; then
    echo "Rye installed"
else
    curl -sSf https://rye.astral.sh/get | bash
fi

# Apply user conf
./apply.zsh

# Setup tmux
if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    tmux source ~/.tmux.conf
    # And then enter (prefix + I) inside tmux to install plugins!
fi

# Configure KDE manually
# Install apps manually: CLion, Slack, VirtualBox, Zed, etc
