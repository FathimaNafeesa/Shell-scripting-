#! /bin/bash 
echo "Enter the coefficient of x^2"
read a

echo "Enter the coefficient of x"
read b

echo "Enter the coefficient"
read c
delta=$(echo "scale=4;$b^2 - 4 * $a * $c" | bc -l)
echo "$delta"
if [ $delta -ge 0 ]
then
	root1=$(echo "((-1 * $b) + sqrt($delta)) / (2 * $a)" | bc -l)
	echo "The roots are"
	root2=$(echo "((-1 * $b) - sqrt($delta)) / (2 * $a)" | bc -l)
	echo "1. $root1"
	echo "2. $root2"
else
	echo "Imaginery roots"
fi

