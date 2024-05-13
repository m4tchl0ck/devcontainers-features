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

mkdir -p /usr/local/structurizr-lite
cp ./structurizr-lite.sh /usr/local/structurizr-lite/structurizr-lite
wget https://github.com/structurizr/lite/releases/download/v2024.03.03/structurizr-lite.war -O /usr/local/structurizr-lite/structurizr-lite.war
