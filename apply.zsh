#!/bin/zsh

# Copy zsh conf:
cp --parents home/jaagup/.zshrc /

# Copy alacritty+zellij conf:
cp --parents home/jaagup/.alacritty.toml /
cp --parents -r home/jaagup/.config/zellij /

# Copy zed conf:
cp --parents -r home/jaagup/.config/zed /

# Copy fonts:
cp --parents -r home/jaagup/.local/share/fonts /

# Apply git stuff:
cp --parents -r home/jaagup/.gitconfig /
