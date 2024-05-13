#!/bin/sh

# Check if $1 is set
if [ -z "$1" ]; then
    echo "Provide path to workspace directory as first argument."
    echo "Example: $0 /path/to/workspace"
    exit 1
fi

java -Djdk.util.jar.enableMultiRelease=false -Dserver.port=18080 -jar /usr/local/structurizr-lite/structurizr-lite.war $1