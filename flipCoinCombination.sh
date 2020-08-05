#!/bin/bash
echo "Coin Flip Combination"
declare -A dict
ct=0
heads=0
tails=0
for i in {1..20}
do
	check=$(( RANDOM%2 ))
	if [[ $check -eq 1 ]]
	then
		dict[$ct]="Heads"
		heads=$(( $heads + 1 ))
	else
		dict[$ct]="Tails"
		tails=$(( $tails + 1 ))
	fi
	ct=$(( $ct + 1))
done
perHead=$(( $heads * 100 ))
perTail=$(( $tails * 100 ))
echo "Head Percentage: $(( perHead/20 ))%"
echo "Tail Percentage: $(( perTail/20 ))%"
