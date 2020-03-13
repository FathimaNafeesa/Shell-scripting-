#! /bin/bash -x 
echo "Enter the year"
read year

if [ $year -ge 1000 -a $year -le 9999 ]
then
	if [ $((year %  4)) -eq 0 -a $((year % 100)) -ne 0 ] || [$((year % 400)) -eq 0 ]
        then
		echo "It is a leapyear"
	else
		echo "It is not a leap year"
        fi
else
	echo "It is  not a leap year"
fi
