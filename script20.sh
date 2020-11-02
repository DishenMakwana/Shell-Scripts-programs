dir1=$1
dir2=$2
cd
cur_dir=$(pwd)
cd $dir1
ls > lsdir1.txt
count1=$(ls | wc -l)
count1=$(($count1 +1))
mv lsdir1.txt $cur_dir
cd
cd $dir2
count2=$(ls | wc -l)
count2=$(($count2 +1))
ls > lsdir2.txt
mv lsdir2.txt $cur_dir
cd

i=1
while [ $i -le $count1 ]
do
j=1
name=$(awk 'NR=='$i' {print; exit}' lsdir1.txt)
	while [ $j -le $count2 ]
	do
		name1=$(awk 'NR=='$j' {print; exit}' lsdir2.txt)
		if [ $name = $name1 ]
			then
			rm $dir1/$name
			rm $dir2/$name
		fi
		j=$(($j+1))
	done
i=$(($i+1))
done
