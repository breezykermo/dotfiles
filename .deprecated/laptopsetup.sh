#!/usr/env/bin fish
set TMP (pwd)/.Xresources-local
sed -E 's/size=(.+?):/size=10:/g' (pwd)/.Xresources >> $TMP
xrdb $TMP
rm $TMP
