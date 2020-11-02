echo "Enter Dir: "
read a
echo "Enter final Dir: "
read b
cd
cd $a
c=$(echo | ls)
mkdir $b
echo $c > c.txt
count=$(ls -1 | wc -l)
echo $count
i=1
while [ $i -le $count ]
do
name=echo | cut -d " " -f $i c.txt
#echo $name
cp $name > $b/$name
i=$((i+1))
done
