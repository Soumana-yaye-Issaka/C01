#!/bin/bash

# Vérifier si le bon nombre d'arguments est fourni
if [ "$#" -ne 2 ]; then
    echo "Usage : $0 <fichier> <chaîne>"
    exit 1
fi

# Vérifier si le fichier existe
if [ ! -f "$1" ]; then
    echo "Le fichier '$1' n'existe pas."
    exit 1
fi

# Recherche de la chaîne dans le fichier
grep --color=auto "$2" "$1"

# Vérifier si la chaîne est trouvée
if [ $? -eq 0 ]; then
    echo "La chaîne '$2' a été trouvée dans '$1'."
else
    echo "La chaîne '$2' n'a pas été trouvée dans '$1'."
fi
