echo "Welcome to the flip coin simulator"
echo ""
echo "Flipping coin ==>"

value=$(( RANDOM % 2 ))

won_count=0
while (( $won_count != 21 ))
do
    if (( $value == 1 ))
    then
        echo "Heads"
        (( won_count++ ))
    else
        echo "Tails"
        (( won_count++ ))
    fi
done
echo "Congratulations....See who is the winner"