echo 'Enter 1st NO.: '
read a
echo 'Enter 2nd NO.: '
read b
echo 'Enter 3rd NO.: '
read c


if [ $a -gt $b ] && [ $a -gt $c ] && [ $b -gt $c ]
then echo "A is MAX B is MID C is MIN"
elif [ $a -gt $b ] && [ $a -gt $c ] && [ $c -gt $b ]
then echo "A is MAX C is MID B is MIN"
elif [ $b -gt $a ] && [ $b -gt $c ] && [ $a -gt $c ]
then echo "B is MAX A is MID C is MIN"
elif [ $b -gt $a ] && [ $b -gt $c ] && [ $a -lt $c ]
then echo "B is MAX C is MID A is MIN"
elif [ $c -gt $a ] && [ $c -gt $b ] && [ $a -gt $b ]
then echo "C is MAX A is MID B is MIN"
else echo "B is MAX A is MID C is MIN"

fi
