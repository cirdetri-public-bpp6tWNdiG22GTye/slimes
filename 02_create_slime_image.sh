#!/bin/bash

# Get directory executed this shell
EXEDIR=$(dirname "$(realpath "$0")")
IMAGEDIR=$EXEDIR/99_image
HTMLDIR=$EXEDIR/98_html

# Create array slimes
slimes=( $(ls $EXEDIR | grep -vE '^[0-9]{2}') )
#echo $(ls $EXEDIR | grep -vE '^[0-9]{2}')

# Create slime html
for color in ${slimes[@]}; do
    slime_text=$EXEDIR/$color
    slime_html=$HTMLDIR/${color}.html
    slime_image=$IMAGEDIR/$color
    if [ ! -e $slime_image ]; then
        cat $slime_text | ansi2html > $slime_html
    fi
done

