#!/usr/bin/env bash

FILE_PATH=$1

if [ $# -ne 1 ] # verifier si le script a un argument
then
	echo "ce programme demande un argument: le chemin vers le fichier fr.txt" 
	exit
fi

ggrep -E -o "[[:alpha:]\'-]*" $FILE_PATH | tr "[:upper:]" "[:lower:]" 