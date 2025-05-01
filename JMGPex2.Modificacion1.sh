#!/bin/bash

# Verificar si se proporcionó un argumento
if [ -z "$1" ]; then
    echo "Uso: $0 <nombre_de_archivo_o_directorio>"
    exit 1
fi

FILE="$1"

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
