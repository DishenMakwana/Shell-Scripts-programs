echo "Enter 1st No."
read a
echo "Enter 2nd No."
read b

if [ $a -gt $b ] 
then echo "A is Max with value = " $a
elif [ $a -eq $b ] 
then echo "A is EQUAL to B"
else echo "B is Max with value = " $b
fi
