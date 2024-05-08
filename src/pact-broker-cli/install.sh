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

mkdir -p $_REMOTE_USER_HOME/.local
cd $_REMOTE_USER_HOME/.local
curl -fsSL https://raw.githubusercontent.com/pact-foundation/pact-ruby-standalone/master/install.sh | PACT_CLI_VERSION=v2.4.2 bash
