#!/bin/zsh

# Copy zsh conf:
cp --parents ~/.zshrc .

# Copy alacritty+zellij conf:
cp --parents ~/.alacritty.toml .
cp --parents -r ~/.config/zellij .

# Copy zed conf:
cp --parents -r ~/.config/zed .

# Copy fonts:
cp --parents -r ~/.local/share/fonts .

# Copy git stuff:
cp --parents -r ~/.gitconfig .
