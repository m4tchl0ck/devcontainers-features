#!/bin/sh
set -e

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $_CONTAINER_USER_HOME/powerlevel10k
echo 'source $_CONTAINER_USER_HOME/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc