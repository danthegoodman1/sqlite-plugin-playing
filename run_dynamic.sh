#!/bin/bash

echo "Building SQLite with static memvfs..."
docker build -f Dockerfile -t sqlite-memvfs .

if [ $? -eq 0 ]; then
    echo "Build successful! Running SQLite with static memvfs..."
    echo "=========================================="
    docker run --rm sqlite-memvfs
else
    echo "Build failed!"
    exit 1
fi
