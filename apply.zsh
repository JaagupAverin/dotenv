#!/bin/zsh

# Copy zsh conf:
cp --parents home/jaagup/.zshrc /

# Copy tmux conf:
cp --parents home/jaagup/.tmux.conf /

# Copy konsole conf:
cp --parents -r home/jaagup/.local/share/konsole /

# Copy zed conf:
cp --parents -r home/jaagup/.config/zed /

# Copy fonts:
cp --parents -r home/jaagup/.local/share/fonts /
