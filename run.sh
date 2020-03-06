#!/bin/sh

SINGLE="/app/single.sh"
MULTI="/app/multi.sh"

if [ "$1" = 'multi' ]; then
    "$MULTI" 
    exit
fi

 "$SINGLE"
