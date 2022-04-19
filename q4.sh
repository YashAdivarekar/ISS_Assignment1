#!/bin/bash

echo "Give input to the array: "
read -r line
arr=(${line//,/ })

n=${#arr[*]}

for((i=n-1;i>0;i--))
do

    swapcount=0
    for((j=0;j<i;j++))
    do

        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
        temp=${arr[j]}
        arr[$j]=${arr[$((j+1))]}
        arr[$((j+1))]=$temp
        swapcount=$((swapcount+1))
        fi

    done 

    if [ $swapcount -eq 0 ]
    then 
    break
    fi

done


echo -n "Sorted array: "
echo ${arr[*]}
