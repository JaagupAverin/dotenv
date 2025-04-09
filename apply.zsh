#!/bin/zsh

# Copy zsh conf:
cp --parents home/jaagup/.zshrc /

# Copy tmux conf:
cp --parents home/jaagup/.tmux.conf /

# Copy alacritty conf:
cp --parents -r home/jaagup/.alacritty.toml /

# Copy zed conf:
cp --parents -r home/jaagup/.config/zed /

# Copy fonts:
cp --parents -r home/jaagup/.local/share/fonts /

# Apply git stuff:
cp --parents -r home/jaagup/.gitconfig /
