echo "enter name"
read name
if [ `echo $name | wc -c ` -ge 4 ]
then
  echo " $name ,How are you ? "
else
  echo " INVALID "
fi



