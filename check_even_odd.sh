#! /usr/bin/bash

# HERE IS OUR SCRIPT

echo "Enter a number to check EVEN or ODD : "
read number

rem=$((number % 2))

if [ $rem -eq 0 ]
then
	echo "Number $number is EVEN"
else
	echo "Number $number is ODD"
fi

# END
