#!/usr/bin/env bash

if [ $# -ne 1 ] # verifier si le script a un argument
then
	echo "ce programme demande un argument: le chemin vers le fichier fr.txt" 
	exit
fi

FILE_PATH=$1

ggrep -E -o "[[:alnum:]-]*" $FILE_PATH | tr "[:upper:]" "[:lower:]" 

# Si on voulait prendre laisser les apostrophes et donc ne pas separer des mots comme qu'il / l'avion etc. on pourait utiliser:
# ggrep -E -o "[[:alnum:]\'’-]*" $FILE_PATH | tr "[:upper:]" "[:lower:]" 