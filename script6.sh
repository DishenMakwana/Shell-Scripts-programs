echo "1. Addition\n2. Subtraction\n3. Multiplication\n4. Division"
read ch

echo "Enter No. 1: "
read a
echo "Enter No. 2: "
read b

case $ch in 
1)ans=$(($a + $b));;
2)ans=$(($a - $b));;
3)ans=$(($a * $b));;
4)ans=`echo "scale=2; $a / $b" | bc -l`;;
*)ans="Wrong Choice"
esac

echo "Answer is: " $ans
