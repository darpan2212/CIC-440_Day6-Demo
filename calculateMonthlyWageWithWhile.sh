#!/bin/bash -x

PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20
MAX_WORKING_HOUR=40;
PROBLEMATIC_SCENARIO=36;

totalWage=0;
totalWorkingHour=0;

day=0;
while [[ $day -lt $MAX_WORKING_DAY && $totalWorkingHour -lt $MAX_WORKING_HOUR ]]
do
	#to avoid $((36+8)) totalWorkHour scenario
	if [ $totalWorkingHour -eq $PROBLEMATIC_SCENARIO ]
	then
		isPresent=$PART_TIME;
	else
		isPresent=$((RANDOM%3));	
	fi

	case $isPresent in
		$PRESENT)
			workingHour=8;
			;;

		$PART_TIME)
			workingHour=4;
			;;

		*)
			workingHour=0;
			;;
	esac;

	((totalWorkingHour+=$workingHour));
	dailyWage=$(($workingHour * $WAGE_PER_HOUR));

	totalWage=$(($totalWage + $dailyWage));
	((day++));
done

echo "Employee's monthly wage : $"$totalWage" USD (Total working Hour : "$totalWorkingHour" Hour)";
