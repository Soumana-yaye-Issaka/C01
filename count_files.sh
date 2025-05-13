#!/bin/bash

# Vérifier si un argument a été fourni
if [ -z "$1" ]; then
    echo "Usage : $0 <répertoire>"
    exit 1
fi

# Vérifier si le répertoire existe
if [ ! -d "$1" ]; then
    echo "Le répertoire '$1' n'existe pas."
    exit 1
fi

# Utilisation de ls et wc -l
count=$(ls -1 "$1" | wc -l)

echo "Nombre de fichiers dans '$1' : $count"
