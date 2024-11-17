#!/bin/zsh

# Copy zsh conf:
cp --parents ~/.zshrc .

# Copy tmux conf:
cp --parents ~/.tmux.conf .

# Copy konsole conf:
cp --parents -r ~/.local/share/konsole .

# Copy zed conf:
cp --parents -r ~/.config/zed .
