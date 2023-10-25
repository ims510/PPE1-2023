#!/usr/bin/env bash

FILE_PATH=$1
while read -r line;
do
	echo ${line};
done < "$FILE_PATH/fr.txt"
