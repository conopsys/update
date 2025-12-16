#!/bin/sh
set -e

EXTENSION_ID="vscode-dependencies-autocomplete"

echo "Installing VS Code extension: $EXTENSION_ID"

# Check that the `code` CLI exists
if ! command -v code >/dev/null 2>&1; then
  echo "Error: VS Code CLI ('code') not found."
  echo "Open VS Code → Cmd+Shift+P → 'Shell Command: Install code command in PATH'"
  exit 1
fi

code --install-extension "$EXTENSION_ID"

echo "Done."
