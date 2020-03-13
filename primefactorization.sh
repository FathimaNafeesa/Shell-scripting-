#! /bin/bash
echo -e "Please enter the number"
read n
echo "The prime factors are"
for(( i=2;i<$n;i++))
do
	while(( $n % $i == 0 ))
	do
		echo "$i"
		n=$( echo "$n/$i"| bc )
	done
done
if [ $n -gt 2 ]
then
echo "$n"
fi


