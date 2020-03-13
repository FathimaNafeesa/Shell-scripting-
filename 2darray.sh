#! /bin/bash 
declare -A matrix
echo "Input the number of rows required"
read rows
echo "Input the number of columns required"
read columns

for((i=1;i<=$rows;i++))
do
	for((j=1;j<=$columns;j++))
	do
	echo "Input element ($i,$j)"
	read data
        matrix[$i,$j]=$data
	done
done


echo "The entered 2D array is:"

for((i=1;i<=$rows;i++))
do
	for((j=1;j<=$columns;j++))
	do
	echo -e "${matrix[$i,$j]} \c"
	done
echo 
done
