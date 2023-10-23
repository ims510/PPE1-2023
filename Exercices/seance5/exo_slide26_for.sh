#!/bin/bash

# Ecrire un script qui donne le nombre de Location par année

# Le premier argument est le chemin aux fichiers .ann

FOLDER_PATH=$1

if [[ $FOLDER_PATH =~ [a-z]*/*[a-z]* ]]
then
	for YEAR in 2016 2017 2018
	do
		echo -n "Le nombre de répétitions du mot 'Location' en $YEAR est:"
		cat $FOLDER_PATH/$YEAR/*/* | grep Location | wc -l
	done

else
	echo "Le chemin vers les fichiers n'est pas valide"
		exit
fi


