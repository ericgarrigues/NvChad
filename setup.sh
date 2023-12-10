#!/bin/bash

set -e

from=$(dirname "$(readlink -f "$0")")
to="$HOME/.config/nvim"
rm -rf "$HOME/.cache/nvim"
rm -rf "$HOME/.local/share/nvim"
rm -rf "$to" 2>/dev/null || true

ln -s $(pwd) "$HOME/.config/nvim"
