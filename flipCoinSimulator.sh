#!/bin/bash -x
HEADS=1
NUM_OF_FLIPS=21

head_win=0
tail_win=0

while [[ $head_win -lt $NUM_OF_FLIPS && $tail_win -lt $NUM_OF_FLIPS ]]
do
	flip_coin=$((RANDOM%2))
	if [ $flip_coin -eq $HEADS ]
	then
		head_win=$(($head_win+1))
	else
		tail_win=$(($tail_win+1))
	fi
done

if [ $head_win -eq $tail_win ]
then
        echo "It is a Tie."
	while [[ $(($head_win-$tail_win)) -lt 2 && $(($tail_win-$head_win)) -lt 2 ]]
	do
		flip_coin=$((RANDOM%2))
		if [ $flip_coin -eq $HEADS ]
		then
			head_win=$(($head_win+1))
		else
			tail_win=$(($tail_win+1))
		fi
	done
	echo $head_win "and" $tail_win
elif [ $head_win -gt $tail_win ]
then
        echo "Head won by $(($head_win-$tail_win))."
else
        echo "Tail won by $(($tail_win-$head_win))."
fi
