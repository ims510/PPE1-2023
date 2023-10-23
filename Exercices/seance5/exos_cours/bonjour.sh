#!/bin/bash
echo "le premier argument est: ($1)"

if [ -z  "$1" ]
then 
	echo "le premier argument est vide"
	exit
fi


echo "le premier argument n'est pas vide"
if [[ $1 =~ bon(jour|soir) ]]
then
	echo "salut"
fi	

echo "fin de programme"