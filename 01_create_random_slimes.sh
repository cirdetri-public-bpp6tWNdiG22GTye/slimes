#!/bin/bash

# Get directory executed this shell
EXEDIR=$(dirname "$(realpath "$0")")

# Create array slimes
slimes=( $(ls $EXEDIR | grep -vE '^[0-9]{2}') )
#echo $(ls $EXEDIR | grep -vE '^[0-9]{2}')

# Create random number 5
first_id=$(expr $RANDOM % ${#slimes[@]})
#next_id=$(expr $RANDOM % \( ${#slimes[@]} - 1 \) + 1)
next_id=2
random_ids=($first_id)
for i in {1..4}; do
    random_ids+=( $(expr \( $first_id + $next_id \* $i \) % ${#slimes[@]}) )
done
#echo ${random_ids[@]}

# Create slimes line
slimes_line=""
for color in ${random_ids[@]}; do
    slimes_line+=" $EXEDIR/${slimes[$color]}"
done
#echo $slimes_line

# Create slimes to parent directory
paste -d '' $slimes_line > $EXEDIR/../00-slimes

