#!/bin/bash

# Pedir al usuario el nombre del archivo
read -p "Introduce el nombre del archivo o directorio: " FILE

# Verificar si el archivo existe
if [ -e "$FILE" ]; then
    # Comprobar qué tipo de archivo es
    if [ -f "$FILE" ]; then
        echo "$FILE es un archivo normal."
    elif [ -d "$FILE" ]; then
        echo "$FILE es un directorio."
    else
        echo "$FILE es otro tipo de archivo."
    fi
else
    echo "El archivo/directorio no existe."
fi
