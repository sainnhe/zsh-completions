#!/usr/bin/env sh

cd $(git rev-parse --show-toplevel)/src/custom
pip completion --zsh > pip.plugin.zsh
npm completion > npm.plugin.zsh
curl -L https://raw.githubusercontent.com/Azure/azure-cli/dev/az.completion > az.plugin.zsh
rustup completions zsh rustup > _rustup
rustup completions zsh cargo > _cargo

