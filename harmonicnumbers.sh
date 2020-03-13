#! /bin/bash -x 
echo "Enter the number to find the harmonic"
read N
sum=0
x=0
for((i=1;i<=$N;i++))
do
	sum=$(echo "scale=3;$x + 1/$i"|bc )
	x=$sum
done
echo "$sum"
