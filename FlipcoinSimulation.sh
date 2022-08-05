#!/bin/bash

echo ""
echo "Flip Coin Simulation"
echo ""

#UC1

#CONSTANT
HEAD=0

#TO PRINT THE HEAD AND TAIL
flipCoin=$((RANDOM%2))
if [ $flipCoin == $HEAD ]
then
	echo "Head"
else
	echo "Tail"
fi
