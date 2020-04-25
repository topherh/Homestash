#!/bin/sh
ls | while read src
do
  dest="$(echo "$src" | tr ' ' _ | tr "[:upper:]" "[:lower:]")"
  if [ "$src" != "$dest" ]
  then
    if [ -f "$dest" ]
    then
      #ls -l "$src" "$dest"
      #echo "Can't rename \"$src\", \"$dest\" already exist"
    #else
      #echo "$src" "->" "$dest"
      mv "$src" "$dest"
    fi
  fi
done
