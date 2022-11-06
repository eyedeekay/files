#! /usr/bin/env sh



SCHEME='https://'
#SCHEME='http://'

SITE='download.i2p2.no/'
#SITE='files.i2p-projekt.de/'

DIR=releases
RELEASELISTING=$(lynx -listonly -nonumbers -dump "$SCHEME$SITE$DIR" | sed "s|$SCHEME$SITE||g")

for f in $RELEASELISTING; do
  echo $SCHEME$SITE$f
  wget -r -np -c $SCHEME$SITE$f
  mkdir -p $f/
  cp -rv $SITE$f/* $f/
  rm $f/*/ -rfv
  ./update-gitignore.sh
  git add $f*
  git commit -am "$f"
  git push
done
