#!/bin/bash

#first resize to make small
mogrify -path "$2" -resize 320x320 "$1"

#then reduce collers
pngquant 64 "$2"

#then rename
rename -v 's/-fs8//' $2/*.png
rename -v 'y/A-Z/a-z/' $2/*.png

