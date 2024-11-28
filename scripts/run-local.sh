#!/bin/bash

echo "Starting local action runner..."

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${SCRIPT_DIR}/.."

echo "Working directory: $(pwd)"

mkdir -p build
echo "Created build directory"

if [ ! -f "repos.txt" ]; then
    echo "Creating empty repos.txt"
    touch repos.txt
fi

echo "Running act with workflow_dispatch event..."

act workflow_dispatch \
  --container-architecture linux/amd64 \
  -P ubuntu-latest=catthehacker/ubuntu:act-latest