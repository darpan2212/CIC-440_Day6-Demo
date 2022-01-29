#!/bin/bash -x

PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;

totalWage=0;

for ((day=0;day<20;day++))
do
	isPresent=$((RANDOM%3));

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

	dailyWage=$(($workingHour * $WAGE_PER_HOUR));

	totalWage=$(($totalWage + $dailyWage));
done

echo "Employee's monthly wage : $"$totalWage" USD";
