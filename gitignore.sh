#! /usr/bin/env sh

grep "$1" .gitignore || echo "$1" >> .gitignore
git commit -am "add $1 to .gitignore"