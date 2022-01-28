#!/bin/bash -x

PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;

isPresent=$((RANDOM%3));

case $isPresent in
	$PRESENT)
		echo "Employee is present";
		workingHour=8;
		;;

	$PART_TIME)
		echo "Employee is working part time";
		workingHour=4;
		;;

	*)
		echo "Employee is absent";
		workingHour=0;
		;;
esac;

dailyWage=$(($workingHour * $WAGE_PER_HOUR));

echo "Employee's daily wage : $"$dailyWage " USD"
