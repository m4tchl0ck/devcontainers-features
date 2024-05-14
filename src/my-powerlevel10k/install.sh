#!/bin/sh
set -e

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $_CONTAINER_USER_HOME/powerlevel10k
chown -R $_CONTAINER_USER:$_CONTAINER_USER $_CONTAINER_USER_HOME/powerlevel10k
cp $_CONTAINER_USER_HOME/powerlevel10k/powerlevel10k.zsh-theme $_CONTAINER_USER_HOME/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
# echo 'source $_CONTAINER_USER_HOME/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc