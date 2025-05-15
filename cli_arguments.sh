#!/bin/bash
#Lecture  de ligne Tapée par l'utilisateur et stockage
read -a arg
#Initialisation du compteur à 1
i=1
for arg in "${arg[@]}"; do
    echo "Argument $((i++)): $arg" #Affiche chaque argument avec son numéro
done

S