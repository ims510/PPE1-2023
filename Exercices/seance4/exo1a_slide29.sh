#!/bin/bash

#Ecrire un script qui compte les entités pour une année, un type d'entité donné en argument

ENTITY_TYPE=$1
FOLDER_PATH=$2
YEAR=$3

ls $FOLDER_PATH/$ENTITY_TYPE/$YEAR/*/* | wc -l