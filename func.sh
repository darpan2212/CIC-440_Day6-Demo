function div() {
	a=$1;
	b=$2;
	divAns=`echo $a $b | awk '{print $1/$2}'`;
	echo $divAns;
}

sum=$(div 4 5);

echo $sum;
