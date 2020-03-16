 #! /bin/bash 
echo "Enter the number of coupon numbers"
read N
declare -a coupon_num
echo -e "Enter the coupon numbers: \c"
for((i=0;i<$N;i++))
do
	read M
	coupon_num[i]=$M
done

random_numbers_needed=0
echo "${coupon_num[@]}"
while [ ${#coupon_num[@]} -le 999 ]
do
	X=$(( RANDOM % 1000))

		if [ ! ${coupon_num[ $X ]} ] 
		then
			L=${#coupon_num[@]}
			coupon_num[$L]=$X

			((random_numbers_needed++))
		fi
done

echo "Total random numbers needed to have all distinct numbers = $random_numbers_needed"
