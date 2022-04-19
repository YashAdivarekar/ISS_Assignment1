#!/bin/bash
touch speech.txt
rm speech.txt
touch speech.txt
while IFS= read -r line
do
  prefix=`cut -d "~" -f2- <<< "$line"`
  suffix=`echo $line | cut -d "~" -f1`
  if [ -z "$line" ]
  then
  continue
  else
  echo "$prefix once said, \""$suffix"\"" >> speech.txt 
  fi
done < "quotes.txt"