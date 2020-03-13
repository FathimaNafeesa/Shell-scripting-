#! /bin/bash
echo "Enter 1 to begin"
read key1
if [ $key==1 ]
then
Initial_time=$(date "+%S")
fi
echo "Enter 0 to end"
read key2
if [ $key2==0 ]
then
Final_time=$(date "+%S")
fi
Interval=$( expr $Final_time - $Initial_time )
duration=$( echo "scale=3;$Interval / 60" |bc )
echo "You have taken $duration minutes"

