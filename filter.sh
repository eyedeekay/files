#! /usr/bin/env sh

./gitignore.sh
git filter-branch -f --prune-empty -d /dev/shm/scratch \
  --index-filter "git rm --cached -f --ignore-unmatch $1" \
  --tag-name-filter cat -- --all