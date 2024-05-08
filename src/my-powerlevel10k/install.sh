#!/bin/sh
set -e

if [ -z "$_REMOTE_USER_HOME" ]; then
    echo "Variable _REMOTE_USER_HOME is not set. Please set the path to the remote user's home directory."
    exit 1
fi

if [ ! -d "$_REMOTE_USER_HOME" ]; then
    echo "Directory $_REMOTE_USER_HOME does not exist. Please provide a valid path."
    exit 1
fi

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $_REMOTE_USER_HOME/powerlevel10k
echo 'source '$_REMOTE_USER_HOME'/powerlevel10k/powerlevel10k.zsh-theme' >>$_REMOTE_USER_HOME/.zshrc