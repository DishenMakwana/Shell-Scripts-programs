echo "Enter the INITIAL: "
read a
echo "Enter the FINAL: "
read b

i=$a
echo -n "Prime NO. are: "
while [ $i -le $b ]
do
	j=2
	c=0
	while [ $j -lt $i ]
	do
		if [ `expr $i % $j` -eq 0 ]
		then 
			c=1
			break
		fi
		j=`expr $j + 1`
		#j=$((j + 1))
	done

	if [ $c -eq 0 ]
	then echo -n $i" "
	fi
	i=`expr $i + 1`
done
echo ""
