#!/bin/bash

echo "Removing zshkit..."

rm -rf "$HOME/.zshkit"

sed -i '' '/zshkit/d' "$HOME/.zshrc"

echo "Done!"