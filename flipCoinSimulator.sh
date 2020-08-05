#!/bin/bash -x
HEADS=1
flip_coin=$((RANDOM%2))

if [ $flip_coin -eq $HEADS ]
then
        echo "Heads is winner."
else
        echo "Tails is winner."
fi
