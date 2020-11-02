no=$1
echo "Original NO.: " $no
pow=0
sum=0
while [ $no -ge 10 ]
do
no=$(($no / 10))
pow=$(($pow+1))
done

no1=0
no=$1
while [ $pow -ge 0 ]
do
sum=$(($sum + $no % 10))
div=$(($no % 10))
no=$(($no / 10))
	pow1=$pow
	mul=1
	while [ $pow1 -gt 0 ]
	do
	mul=$((mul*10))
	pow1=$(($pow1 - 1))
	done

no1=$(( $no1 + $div *mul ))
pow=$(($pow - 1))
done

echo "Reversed No. is: " $no1
echo "Sum of No. is: " $sum
