#!/bin/bash

while read LINE
do
	echo "la ligne est: $LINE"
done < ./80jours.txt

echo "on a fini"