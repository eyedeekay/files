#! /usr/bin/env sh
wd=$(pwd)
find releases -type d -exec ./dir.sh "$wd/{}" \;
#git checkout --orphan latest_branch
git add .
#DATE="$(date +%Y%m%d)"
#git commit -am 'update' #Committing the changes
#git branch -D main #Deleting main branch
#git branch -m main #renaming branch as main
git push -f origin main #pushes to main branch
#git gc --aggressive --prune=all # remove the old files