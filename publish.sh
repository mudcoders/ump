#!/bin/bash
set -e

# Build the book
npm install

# And publish it
npm install -g gh-pages
gh-pages -d _book
