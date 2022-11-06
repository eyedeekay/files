#! /usr/bin/env sh
wd=$(pwd)
find releases -type d -exec ./dir.sh "$wd/{}" \;
git checkout --orphan latest_branch
git add -A
DATE=$(date)
git commit -am “update $DATE” #Committing the changes
git branch -D main #Deleting main branch
git branch -m main #renaming branch as main
git push -f origin main #pushes to main branch
git gc --aggressive --prune=all # remove the old files