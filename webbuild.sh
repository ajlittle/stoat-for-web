#!/bin/bash
set -e
curl https://mise.run | sh
export PATH="$HOME/.local/bin:$PATH"
mise install --frozen
mise run build:deps
mise run build
