echo "Enter a NO.: "
read a
i=0

while [ $i -le $a ]
do
	ran=$(($i % 2))
	if [ $ran == 0 ]
	then echo $i
	fi
	i=$(($i + 1))
done
