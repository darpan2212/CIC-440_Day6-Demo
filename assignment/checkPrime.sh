read -p "Enter the max range, to get the list of prime numbers : " num;

for ((j=2;j<=$num;j++))
do
	isPrime=1;
	for((i=2;i<=$j/2;i++))
	do
		if [ $(($j%$i)) -eq 0 ]
		then
			isPrime=0;
			break;
		fi
	done
	if [ $isPrime -eq 1 ]
	then
		echo $j;
	fi
done
