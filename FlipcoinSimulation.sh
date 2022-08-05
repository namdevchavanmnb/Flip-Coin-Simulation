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


#UC3

target_count=21
heads_count=0
tails_count=0
flips_count=0
while(( 1 ))
do
    (( flips_count++ ))
    echo -n "Flip-$flips_count is "
    toss=$(( RANDOM % 2 ))
    if(( toss == 0 ))
    then
        echo "Heads"
        (( heads_count++ ))
    else
        echo "Tails"
        (( tails_count++ ))
    fi
    if(( heads_count == target_count || tails_count == target_count ))
    then
        break
    fi 
done
echo "The Heads count is $heads_count and Tails Count is $tails_count"
if(( heads_count > tails_count ))
then
    echo "Heads won by $(( heads_count - tails_count ))"
elif(( tails_count > heads_count ))
then
    echo "Tails won by $(( tails_count - heads_count ))"
else    
    echo "Its tie"
fi

#UC4

target_count=21
minimum_difference=2
heads_count=0
tails_count=0
flips_count=0
while(( 1 ))
do
    (( flips_count++ ))
    echo -n "Flip-$flips_count is "
    toss=$(( RANDOM % 2 ))
    if(( toss == 0 ))
    then
        echo "Heads"
        (( heads_count++ ))
    else
        echo "Tails"
        (( tails_count++ ))
    fi
    
    diff_bt_hc_tc=$(( heads_count - tails_count ))
    if(( heads_count == target_count && diff_bt_hc_tc >= minimum_difference ))
    then
        echo "Heads won by $diff_bt_hc_tc points"
        break
    elif(( tails_count == target_count && ${diff_bt_hc_tc#-} >= minimum_difference ))
    then
         echo "Tails won by ${diff_bt_hc_tc#-} points"
         break
    fi
    
done
echo "The Heads count is $heads_count and Tails Count is $tails_count"
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Priva
