echo "1. Display Calander of Current Month"
echo "2. Display Today's Date and Time"
echo "3. Display Users currently Logged in"
echo "4. Display YourName at specified x,y Position"
echo "5. Display Terminal No."

read ch

case $ch in
1) cal
;;
2) date
;;
3) users
;;
4)echo "Specify x:" 
  read x 
  echo "Specify y:" 
  read y
  j=0
  while [ $j -le $y ]
  do
	echo ""
  	j=`expr $j + 1 `
  done
  
  j=0
  while [ $j -le $x ]
  do
	echo -n " "
	j=`expr $j + 1 `
  done
  echo -n -e "Faldu Amish\n"
;;
5) echo -n "Terminal No. is " 
   tty | cut -b 10-
;;
*)echo "Wrong Choice!!"
;;
esac
