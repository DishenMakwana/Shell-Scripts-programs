array=($*)
i=1
while [ $i -lt $#  ]
do
	j=0
	while [ $j -lt $(($# - $i)) ]
	do

	if [ ${array[$j]} -lt ${array[$(($j+1))]} ]
	then
	temp=${array[$j]}
	array[$j]=${array[$(($j+1))]}
	array[$(($j+1))]=$temp
	fi

	j=$(($j+1))
	done
i=$(($i+1))
done
echo ${array[*]}
