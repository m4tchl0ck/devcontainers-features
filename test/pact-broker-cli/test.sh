#!/bin/bash

set -e

# Optional: Import test library bundled with the devcontainer CLI
# See https://github.com/devcontainers/cli/blob/HEAD/docs/features/test.md#dev-container-features-test-lib
# Provides the 'check' and 'reportResults' commands.
source dev-container-features-test-lib

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib. Syntax is...
# check <LABEL> <cmd> [args...]

echo "$HOME"
ls -al $HOME
ls -al $HOME/.local/
ls -al $HOME/.local/pact/
ls -al $HOME/.local/pact/bin/
ls $HOME/.local/pact/ | grep ${HOME}'/.local/pact/bin'
check "pact installed" ls $HOME/.local/pact/ | grep ${HOME}'/.local/pact/bin'
echo $PATH | grep ${HOME}'/.local/pact/bin'
check "PATH setup" echo $PATH | grep ${HOME}'/.local/pact/bin'


# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults