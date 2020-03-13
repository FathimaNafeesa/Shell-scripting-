#!/bin/bash 
read n
m=$n 
h=0
t=0
while [ $n -gt 0 ]
do
  Out=$((RANDOM % 2))
  if [ $Out = 0 ]
  then
    ((h++))

  else
    ((t++))
  fi
((n--))
done
val1=$(echo "scale=3;$h/$m*100"|bc)
val2=$(echo "scale=3;$t/$m*100"|bc)
echo "$val1"
echo "$val2"


