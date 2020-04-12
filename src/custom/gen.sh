#!/usr/bin/env sh

pip completion --zsh > _pip
npm completion > _npm
rustup completions zsh rustup > _rustup
rustup completions zsh cargo > _cargo
proxychains -q wget https://github.com/ohmyzsh/ohmyzsh/raw/master/plugins/pip/_pip

