echo "Enter the directory: "
read dir
cd
cur_dir=$(pwd)

cd $dir
ls *.txt > lsdir1.txt
mv lsdir1.txt $cur_dir
count=$(ls *.txt| wc -l)
echo $count
cd
i=1
while [ $i -le $count ]
do
name=$(awk 'NR=='$i' {print; exit}' lsdir1.txt)
echo $name
rm $dir/$name
i=$(($i+1))
done
