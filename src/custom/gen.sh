#!/usr/bin/env sh

cd $(git rev-parse --show-toplevel)/src/custom
[ -x "$(command -v pip)" ] && pip completion --zsh > pip.plugin.zsh
[ -x "$(command -v npm)" ] && npm completion > npm.plugin.zsh
[ -x "$(command -v rustup)" ] && rustup completions zsh rustup > _rustup
[ -x "$(command -v rustup)" ] && rustup completions zsh cargo > _cargo
[ -x "$(command -v limactl)" ] && limactl completion zsh > _limactl

