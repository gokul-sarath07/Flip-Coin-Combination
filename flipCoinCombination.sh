#!/bin/bash
printf "\n"
echo "Coin Flip Combination"
printf "\n"
echo "Singlet Percentage"
function HeadorTail {
	case $1 in
	1)
		echo "H"
		;;
	0)
		echo "T"
		;;
	esac
}
declare -A dict dict2
for i in {1..50}
do
	check=$( HeadorTail $(( RANDOM%2 )) )
	case $check in
		"H")
			dict[$i]=$check
			(( H++ ))
			;;
		"T")
			dict[$i]=$check
			(( T++ ))
			;;
	esac
done
perHead=$(( $H * 100 ))
perTail=$(( $T * 100 ))
echo "Head Percentage: $(( perHead/50 ))%"
echo "Tail Percentage: $(( perTail/50 ))%"
printf "\n"
echo "Doublet Percentage"
for (( i=0; i<50; i++ ))
do
	check1=$( HeadorTail $(( RANDOM%2 )) )
	check2=$( HeadorTail $(( RANDOM%2 )) )
	doublet=$check1$check2
    case $doublet in
    	"HH")
	        dict2[$i]=$doublet
			(( HH++ ))
			;;
    	"HT")
        	dict2[$i]=$doublet
			(( HT++ ))
			;;
		"TH")
			dict2[$i]=$doublet
			(( TH++ ))
			;;
		"TT")
			dict2[$i]=$doublet
			(( TT++ ))
			;;
	esac
done
perHH=$(( $HH * 100 ))
perHT=$(( $HT * 100 ))
perTH=$(( $TH * 100 ))
perTT=$(( $TT * 100 ))
echo "HH Percentage: $(( $perHH/50 ))%"
echo "HT Percentage: $(( $perHT/50 ))%"
echo "TH Percentage: $(( $perTH/50 ))%"
echo "TT Percentage: $(( $perTT/50 ))%"

