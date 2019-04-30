#!/bin/bash
set -e

if [ ! -z "$GH_REPO" ]; then
    npm install -g gh-pages
    gh-pages -d _book -r $GH_REPO
fi
