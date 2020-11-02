#!/bin/bash

year=0
isleap="false"
 
echo -n "Enter year (yyyy) : "
read year
 
if [ $((year % 4)) -ne 0 ] ; then
   : #  not a leap year
elif [ $((year % 400)) -eq 0 ] ; then
   # yes, it's a leap year
   isleap="true"
elif [ $((year % 100)) -eq 0 ] ; then
   : # not a leap year
else
   # it is a leap year
   isleap="true"
fi
if [ "$isleap" == "true" ];
then
   echo "$year is leap year"
   echo "Here is the calender of $year"
   cal $year
else
   echo "$year is NOT leap year"
fi
