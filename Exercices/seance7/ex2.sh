#!/usr/bin/env bash


if [ $# -eq 2 ] # verifier si le script a 2 arguments
then
	FILE_PATH=$1
	TOP_NUMBER=$2
elif [ $# -eq 1 ]
then
	FILE_PATH=$1
	TOP_NUMBER=25
else
	echo "ce programme demande au moins un argument: le chemin vers le fichier .txt" 
	exit
fi


./ex1.sh $FILE_PATH | sort | uniq --count | sort -rn | head -n $TOP_NUMBER