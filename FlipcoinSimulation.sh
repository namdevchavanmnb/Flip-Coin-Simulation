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

#UC2

#CONSTANT
HEAD=0
#VARIABLES
headCount=0
tailCount=0
#TO DECLARE DICTIONARY
declare -A singletFlip
#USER INPUT 
read -p "Enter the Number of Coin Flip : " numberOfCoinFlip

#TO STORE HEAD COUNT AND TAIL COUNT IN DICTIONARY
for(( count=0; count<$numberOfCoinFlip; count++ ))
do
   FlipCoin=$(( RANDOM % 2 ))

   if [ $FlipCoin -eq $HEAD ]
   then
      singletFlip[HEAD]=$((++headCount))
   else
      singletFlip[TAIL]=$((++tailCount))
   fi
done
singletHeadPercentage=`echo "scale=2; $headCount * 100 / $numberOfCoinFlip" | bc`
singletTailPercentage=`echo "scale=2; $tailCount *100 / $numberOfCoinFlip" | bc`

echo "To single head percentage and head count:$headCount : " $singletHeadPercentage
echo "To single tail percentage and tail count:$tailCount : " $singletTailPercentage
