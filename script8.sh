for i in {1..19}
do
	ans=$(($i % 2))
	if [ $ans == 0 ]
	then echo $i
	fi
done
