#!/bin/bash

#first resize to make small
mogrify -path "$2" -resize 320x320 "$1"

#then reduce colors
pngquant 64 "$2/$1"

#then rename
rm "$2/$1"
rename -v 's/-fs8//' $2/*.png
rename -v 'y/A-Z/a-z/' $2/*.png

