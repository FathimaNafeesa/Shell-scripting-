#! /bin/bash 
echo "Enter the length of array "
declare -a array
read n

echo "enter the elements"
for((i=0;i<$n;i++))
do
	read data	
	array[i]=$data
done

for((i=0;i<$n;i++))
do
	for((j=(($i+1));j<$n;j++))
	do
		for((k=(($j+1));k<$n;k++))
		do
			if [ $(( ${array[ $i ]} + ${array[ $j ]} +  ${array[ $k ]} )) == 0 ]
			then

				echo -e "${array[ $i ]} ${array[ $j ]}  ${array[ $k ]} "
			fi
                
		done
	done
done
