#!/bin/bash

read string

n=${#string}

for((i=n-1,j=0;i>=0;i--,j++))
do

echo -n ${string:i:1}

done
echo " "

for((i=n-1,j=0;i>=0;i--,j++))
do

echo -n $(echo "${string:i:1}" | tr "0-9a-zA-Z" "1-9a-zA-Z")

done
echo " "

for((i=$((n/2-1));i>=0;i--))
do

echo -n ${string:i:1}

done

for((i=$((n/2));i<=$((n-1));i++))
do

echo -n ${string:i:1}

done

echo " "