echo 'Enter a No.: '
read a

if [ $(($a % 2)) -eq 0 ]
then echo 'No is EVEN'
else echo 'No is ODD'
fi
