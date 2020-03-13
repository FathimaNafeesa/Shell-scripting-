#! /bin/bash 
echo "Input the temperature"
read temperature
echo "Input the wind velocity"
read velocity

if [ $temperature -le 0 ]
then
	t=$(echo "$temperature * -1"|bc)
else
	t=$temperature
fi

if [ $velocity -le 0 ]
then
	v=$(echo "$velocity * -1"|bc)
else
	v=$velocity
fi


if [ $t -le 50 -a $v -ge 120 -o $v -le 3 ]
then
	temp=$(awk -v num=$v 'BEGIN{ print (num^0.16) } ' )

	w=$(echo "scale=3;(35.74 + (0.6215 * $t)) + ((0.4275 * $t) - 35.75) * $temp"|bc -l)
	echo "The windchil is $w"
fi
echo "$#"
