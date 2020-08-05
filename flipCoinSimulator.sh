#!/bin/bash -x
HEADS=1
NUM_OF_FLIPS=10

head_win=0
tail_win=0

for (( i=1; i<=$NUM_OF_FLIPS; i++ ))
do
        flip_coin=$((RANDOM%2))
        if [ $flip_coin -eq $HEADS ]
        then
                head_win=$(($head_win+1))
        else
                tail_win=$(($tail_win+1))
        fi
done
echo "Heads win :" $head_win "Tails win :" $tail_win
