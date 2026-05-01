#!/bin/zsh

ZSHKIT_DIR="$HOME/.zshkit"

for file in "$ZSHKIT_DIR/core/"*.zsh; do
  [ -r "$file" ] && source "$file"
done