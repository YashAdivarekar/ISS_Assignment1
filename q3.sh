#!/bin/bash

echo -n "file size in bytes ="
cat "$1" | wc -c

echo -n "nuber of lines ="
cat "$1" | wc -l

echo -n "number of words ="
cat "$1" | wc -w


i=1
while read line;
do
    echo "Line No : $i - Count of Words :` wc -w <<< "$line"`"
    ((i++)) 
done <"$1"
echo " "




grep -E -o '\w++' "$1" |sort>"file1.txt"
uniq -c "file1.txt" > "file2.txt"

while read -r line;
do
    arr=($line)
    if (($((${arr[0]}-1))==0))
    then
        continue
    else
        echo "Word : ${arr[1]}  - Count of Repetitions : $((${arr[0]}-1))"
    fi
done < "file2.txt"
echo " "

rm file1.txt
rm file2.txt