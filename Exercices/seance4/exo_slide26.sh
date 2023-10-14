#!/bin/bash

# Ecrire un script qui donne le nombre de Location par année

# Le premier argument est le chemin aux fichiers .ann

FOLDER_PATH=$1

echo -n "Le nombre de répétitions du mot 'Location' en 2016 est:"
cat $FOLDER_PATH/2016/*/* | grep Location | wc -l
echo -n "Le nombre de répétitions du mot 'Location' en 2017 est:"
cat $FOLDER_PATH/2017/*/* | grep Location | wc -l
echo -n "Le nombre de répétitions du mot 'Location' en 2018 est:"
cat $FOLDER_PATH/2018/*/* | grep Location | wc -l

