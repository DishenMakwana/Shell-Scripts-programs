touch f6.txt
echo $1 > f6.txt

dd=$(cut -d "/" -f 1 f6.txt)
mm=$(cut -d "/" -f 2 f6.txt)
yy=$(cut -d "/" -f 3 f6.txt)


if [ $mm -le 12 ]&&[ $mm -gt 0 ]
then
	if [ $dd -le 31 ] && [ $dd -gt 0 ]
	then
		echo "Valid Date Format"
	else echo "Invalid Date Format"
	fi
else echo "Invalid Date Format"
fi
