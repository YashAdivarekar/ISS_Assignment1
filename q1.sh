#!/bin/bash

sed '/^[[:space:]]*$/d' quotes.txt

echo " "
echo " "
echo "============================================================================================================================================================="
echo " "

awk '!seen[$0]++' quotes.txt 