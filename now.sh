#!/bin/sh
# WARNING: This script is for educational purposes only
# It intentionally demonstrates bad practices

TARGET_DIR=$1

echo "Cleaning up $TARGET_DIR ..."

# No input validation
# No check for empty variables
# No protection against /

if [ -d $TARGET_DIR ]; then
    echo "Directory found."
    echo "Deleting contents (simulated)..."
    # rm -rf $TARGET_DIR/*
else
    echo "Directory does not exist."
fi

echo "Done."
