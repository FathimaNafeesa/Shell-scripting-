#! /bin/bash 
echo "Enter the coordinate values X and Y respectively"
read x
read y
distance=$(echo "scale=3;sqrt($x^2 + $y^2)"|bc -l)
echo "$distance"
