#! /usr/bin/bash

# HERE IS OUR SCRIPT

echo "Enter you cost price of the item : "
read cost_price

echo "Enter your sell price of the item : "
read sale_price

if [ $sale_price -gt $cost_price ]
then
	echo "Hey, yo got some profit"
	profit_amount=$((sale_price - cost_price))
	echo "Here is your profit amount : $profit_amount"
elif [ $sale_price -lt $cost_price ]
then
	echo "Oops ! your product is in loss"
	loss_amount=$((cost_price - sale_price))
	echo "Here is your loss amount : $loss_amount"
else
	echo "No profit, No loss"
fi

# END
