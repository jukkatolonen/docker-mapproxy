#!/bin/sh

SINGLE="/app/single.sh"
MULTI="/app/multi.sh"

if [ "$1" = 'single' ]; then
    "$SINGLE" 
    exit
fi

if [ "$1" = 'multi' ]; then
    "$MULTI" 
    exit
fi

echo "Nothing to do"