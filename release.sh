#!/usr/bin/env bash

PACKAGE=$(ls -t ~/Downloads/Telegram\ Desktop/pg.*.zip | head -1)
cp "$PACKAGE" pg.zip
ls "$PACKAGE" | awk -F/ '{print $NF}' | awk -F. '{print $2}' | tee >version.txt
cat version.txt

git commit -am "update $(cat version.txt)"
git push
