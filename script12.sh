a=$1
b=$2
i=1

while [ $i -le $b ]
do
echo $a "*" $i "=" $(($a * $i))
i=` expr $i + 1 `
done
