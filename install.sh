#!/bin/bash

set -e

REPO="https://github.com/YOUR_USERNAME/zshkit.git"
INSTALL_DIR="$HOME/.zshkit"

echo "🚀 Installing zshkit..."

if [ -d "$INSTALL_DIR" ]; then
  echo "⚠️ zshkit already installed. Pulling latest..."
  git -C "$INSTALL_DIR" pull
else
  git clone "$REPO" "$INSTALL_DIR"
fi

# backup
cp "$HOME/.zshrc" "$HOME/.zshrc.backup" 2>/dev/null || true

# append safely
if ! grep -q "zshkit.sh" "$HOME/.zshrc"; then
  echo "\n# zshkit" >> "$HOME/.zshrc"
  echo "source ~/.zshkit/zshkit.sh" >> "$HOME/.zshrc"
fi

echo "✅ Installed!"
echo "👉 Run: source ~/.zshrc"