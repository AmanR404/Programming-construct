read -p "1st Input " a
read -p "2nd Input " b
read -p "3rd Input " c

value1=$(( $a+$b*$c ))
echo $value1
value2=$(( $a*$b+$c ))
echo $value2
value3=$(( $c+$a/$b ))
echo $value3
value4=$(( $a%$b+$c ))
echo $value4

key1=a+b*c
key2=a*b+c
key3=c+a/b
key4=a%b+c

declare -A dict

dict[$key1]=$value1
dict[$key2]=$value2
dict[$key3]=$value3
dict[$key4]=$value4


for key in "${!dict[@]}"; do
    echo "$key ${dict[$key]}"
done
