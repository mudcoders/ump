#!/bin/bash
set -e

# Create a working area
TEMP_DIR="$(mktemp -q -d -t "$(basename "$0").XXXXXX" 2>/dev/null || mktemp -q -d)"

# Build the book
npm install
mv _book/* $TEMP_DIR
rm -rf _book

# Check out the target branch
git checkout gh-pages

# Wipe the old commit out
rm -rf *
git add .

# Copy the new version in
mv $TEMP_DIR/* .
git add .

# Commit the latest version
git commit -m "Built site"

# Wipe out the working area
rm -rf $TEMP_DIR

# Push the changes
if [ ! -z "$GH_TOKEN" ]; then
    git push https://${GH_TOKEN}:x-oauth-basic@github.com/mudcoders/ump.git gh-pages
fi
