string=$1
string2=$(echo $1 | rev)
if [ $string = $string2 ]
then echo "Palindrome"
else echo "Not Palindrome"
fi
