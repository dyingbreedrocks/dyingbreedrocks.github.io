#!/usr/bin/env bash
# Purpose: batch image resizer
# Source: https://guides.wp-bullet.com
# Author: Mike

# absolute path to image folder
FOLDER=$1

# max width
WIDTH=$2

# max height
HEIGHT=$3

# resize png to either height or width, keeps proportions using imagemagick
find ${FOLDER} -iname '*.png' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;

