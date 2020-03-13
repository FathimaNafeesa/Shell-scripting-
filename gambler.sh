#! /bin/bash 
echo "What is your stake amount?"
read stake
echo "What is your goal?"
read goal
echo "How many trials do you want?"
read trials


#Game begins
win=0
for((i=0;i<=$trials;i++))
do
	if [ $stake -ne $goal -a $stake -gt 0 ]
	then
	x=$((RANDOM % 2))

		if [ $x == 0 ]
		then
		((stake++))
		((win++))
		else
		((stake--))
		fi
	fi
done

	if [ $stake -eq $goal ]
	then
		echo "You reached Goal"

	elif [ $stake -le 0 ]
	then
		echo "You lost"
	else
		echo
	fi

echo "Your prize is $stake"
echo "You won $win times"
