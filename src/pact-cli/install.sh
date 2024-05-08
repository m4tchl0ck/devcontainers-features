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

export PACT_CLI_VERSION="${PACTCLIVERSION:-"v2.4.2"}"

if [ -z "$PACT_CLI_VERSION" ]; then
    echo "Variable PACT_CLI_VERSION is not set. Please set the version of the Pact CLI to install."
    exit 1
fi

echo "Installing Pact-Ruby-Standalone version $PACT_CLI_VERSION"

mkdir -p $_REMOTE_USER_HOME/.local/
cd /usr/local
curl -fsSL https://raw.githubusercontent.com/pact-foundation/pact-ruby-standalone/master/install.sh | bash