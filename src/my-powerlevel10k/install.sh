#!/bin/sh
set -e

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $_REMOTE_USER_HOME/powerlevel10k
cp $_REMOTE_USER_HOME/powerlevel10k/powerlevel10k.zsh-theme $_REMOTE_USER_HOME/.oh-my-zsh/custom/themes/powerlevel10k.zsh-theme

echo "my-powerlevel10k installed"
echo 'source $_REMOTE_USER_HOME/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc