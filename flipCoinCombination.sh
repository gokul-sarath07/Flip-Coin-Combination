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
declare -A dict dict2 dict3
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
printf "\n"

echo "Triplet Percentage"
for (( i=0; i<50; i++ ))
do
	check1=$( HeadorTail $(( RANDOM%2 )) )
	check2=$( HeadorTail $(( RANDOM%2 )) )
	check3=$( HeadorTail $(( RANDOM%2 )) )
	triplet=$check1$check2$check3
	case $triplet in
		"HHH")	dict3[$i]=$triplet
			(( HHH++ )) ;;
		"HHT")	dict3[$i]=$triplet
            (( HHT++ )) ;;
		"HTH")	dict3[$i]=$triplet
            (( HTH++ )) ;;
		"THH")	dict3[$i]=$triplet
            (( THH++ )) ;;
		"HTT")	dict3[$i]=$triplet
            (( HTT++ )) ;;
		"THT")	dict3[$i]=$triplet
            (( THT++ )) ;;
		"TTH")	dict3[$i]=$triplet
            (( TTH++ )) ;;
		"TTT")	dict3[$i]=$triplet
            (( TTT++ )) ;;
	esac
done
perHHH=$(( $HHH * 100 ))
perHHT=$(( $HHT * 100 ))
perHTH=$(( $HTH * 100 ))
perTHH=$(( $THH * 100 ))
perHTT=$(( $HTT * 100 ))
perTHT=$(( $THT * 100 ))
perTTH=$(( $TTH * 100 ))
perTTT=$(( $TTT * 100 ))
echo "HHH Percentage: $(( $perHHH/50 ))%"
echo "HHT Percentage: $(( $perHHT/50 ))%"
echo "HTH Percentage: $(( $perHTH/50 ))%"
echo "THH Percentage: $(( $perTHH/50 ))%"
echo "HTT Percentage: $(( $perHTT/50 ))%"
echo "THT Percentage: $(( $perTHT/50 ))%"
echo "TTH Percentage: $(( $perTTH/50 ))%"
echo "TTT Percentage: $(( $perTTT/50 ))%"
