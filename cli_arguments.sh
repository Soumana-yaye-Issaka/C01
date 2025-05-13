#!/bin/bash

# Vérifier si au moins un argument est fourni
if [ "$#" -eq 0 ]; then
    echo "Usage : $0 <arg1> <arg2> ..."
    exit 1
fi

echo "Liste des arguments :"

# Boucle sur tous les arguments avec $@
for arg in "$@"; do
    echo "$arg"
done

echo "--- Méthode avec shift ---"

# Boucle en utilisant shift
while [ "$#" -gt 0 ]; do
    echo "$1"
    shift
done
