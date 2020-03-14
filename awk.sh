echo "Enter the word to search"
read pattern
awk -v p="$pattern" 'BEGIN { if(p>1) {print "yes"}else {print "no"}}'





