#! /usr/bin/bash

# HERE IS OUR SCRIPT

year=0
isLeap="true"

echo "Enter a year (yyyy) : "
read year

if [ $((year % 4)) -ne 0 ]
then
	:	# not a leap year
elif [ $((year % 400)) -eq 0 ]
then
	isLeap="true" 		#bcz its a leap year
elif [ $((year % 100)) -eq 0 ]
then
	:	# not a leap year
else
	isLeap="true"	# its a leap year
fi

if [ "$isLeap" == "true" ]
then
	echo "$year is a leap year"
	echo "Here is the calender of that year "
	echo $(cal -y $year)		# this may not give o/p in proper manner
else
	echo "$year is not a leap year"
fi

# END


