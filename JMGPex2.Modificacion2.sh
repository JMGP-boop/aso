#!/bin/bash

# Verificar si se proporcionaron argumentos
if [ "$#" -eq 0 ]; then
    echo "Uso: $0 <nombre_de_archivo_o_directorio> [otro_archivo]..."
    exit 1
fi

# Recorrer todos los argumentos proporcionados
for FILE in "$@"; do
    echo "Analizando: $FILE"
    
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
        echo "El archivo/directorio $FILE no existe."
    fi

    echo "----------------------"
done
