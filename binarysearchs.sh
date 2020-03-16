#! /bin/bash
echo "Enter the word to search"
read pattern
Y=O
awk -v p="$pattern" 'BEGIN {IGNORECASE=1} $0 ~ p {Y++} END { print "CHECKING..."}' AWKfile.txt
if [ Y==1 ]
then
echo "String Detected"
else
echo "cannot detect"
fi






