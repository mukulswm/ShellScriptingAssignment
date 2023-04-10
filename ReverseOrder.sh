#! /bin/bash

args=("$@")
reverse=""
argLen=("$#")

for ((j = 0; j < $argLen; j++))
do
    str=${args[$j]}
    len=${#str}
        for ((i = $len-1; i >= 0; i--))
        do
        reverse+=${str:$i:1} 
        done
    reverse+=" "
done
sed 's/.*/\L&/; s/^\(.\)*/\u&/g' <<<"$reverse" 
