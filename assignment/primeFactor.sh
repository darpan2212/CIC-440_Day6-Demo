read -p "Enter the number to get the prime factors : " num;

for ((j=2;j<=$num;j++))
do
	if [ $(($num%$j)) -eq 0 ]
	then
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
	fi
done
