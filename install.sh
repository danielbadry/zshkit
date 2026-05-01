#!/bin/bash

set -e

INSTALL_DIR="$HOME/.zshkit"
CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "🚀 Installing zshkit..."

if [ "$CURRENT_DIR" != "$INSTALL_DIR" ]; then
  echo "📦 Copying zshkit files to $INSTALL_DIR..."

  rm -rf "$INSTALL_DIR"
  mkdir -p "$INSTALL_DIR"

  cp -R "$CURRENT_DIR/"* "$INSTALL_DIR/"
else
  echo "✅ zshkit is already in $INSTALL_DIR"
fi

touch "$HOME/.zshrc"

if ! grep -q "source ~/.zshkit/zshkit.sh" "$HOME/.zshrc"; then
  {
    echo ""
    echo "# zshkit"
    echo "source ~/.zshkit/zshkit.sh"
  } >> "$HOME/.zshrc"
fi

echo "✅ Installed!"
echo "👉 Run: source ~/.zshrc"