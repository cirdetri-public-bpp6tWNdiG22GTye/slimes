#!/bin/bash

# Get directory executed this shell
EXEDIR=$(dirname "$(realpath "$0")")

# Create slimes to parent directory
paste -d '' \
    $EXEDIR/blue \
    $EXEDIR/green \
    $EXEDIR/yellow \
    $EXEDIR/red \
    $EXEDIR/metal \
    > $EXEDIR/../00-slimes

