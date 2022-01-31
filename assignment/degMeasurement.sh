div59=`echo 5 9 | awk '{print $1/$2}'`;
div95=`echo 9 5 | awk '{print $1/$2}'`;

function degFToDegC() {
	read -p "Enter the temperature in ferenhit : " fernHit;	
	f32=$(($fernHit-32));
	degC=`echo $f32 $div59 | awk '{print $1*$2}'`;
	echo  $fernHit "degF converted to "$degC" degC";
}

function degCTODegF() {
	read -p "Enter the temprature in celcius : " celcius;
	cd95=`echo $celcius $div95 | awk '{print $1*$2}'`;
	ferenHit=`echo $cd95 32 | awk '{print $1+$2}'`;
	echo $celcius "degC converted to "$ferenHit" degF";
}

echo "1. degF to degC";
echo "2. degC to degF";

read -p "What conversion you are choosing : " selection

case $selection in
	1)
		degCResult=$(degFToDegC);
		echo $degCResult;
	;;
	
	2)
		degFResult=$(degCTODegF);
		echo $degFResult;
	;;

	*)
		echo "Invalid selection";
	;;
esac;
