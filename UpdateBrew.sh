#!/bin/bash

sudo chown -R "$USER":admin /usr/local

cd `brew --prefix`
git remote add origin https://github.com/mxcl/homebrew.git
git fetch origin
git reset --hard origin/master

echo "DONE"
