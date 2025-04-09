#!/bin/zsh

# Copy zsh conf:
cp --parents ~/.zshrc .

# Copy tmux conf:
cp --parents ~/.tmux.conf .

# Copy alacritty conf:
cp --parents -r ~/.alacritty.toml .

# Copy zed conf:
cp --parents -r ~/.config/zed .

# Copy fonts:
cp --parents -r ~/.local/share/fonts .

# Copy git stuff:
cp --parents -r ~/.gitconfig .
