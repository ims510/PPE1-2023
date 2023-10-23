#!/bin/bash

# Ecrire un script qui donne le nombre de Location par année

# Le premier argument est le chemin aux fichiers .ann

FOLDER_PATH=$1

for YEAR in 2016 2017 2018
do
	echo -n "Le nombre de répétitions du mot 'Location' en $YEAR est:"
	cat $FOLDER_PATH/$YEAR/*/* | grep Location | wc -l
done

