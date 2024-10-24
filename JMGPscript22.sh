#!/bin/bash

# Verificar que se recibe un argumento
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 /ruta/al/directorio"
    exit 1
fi

directorio="$1"

# Verificar que el argumento es un directorio
if [ ! -d "$directorio" ]; then
    echo "El argumento proporcionado no es un directorio válido."
    exit 1
fi

# Inicializar contador
contador=0

# Listar entradas en el directorio
echo "Entradas en el directorio '$directorio':"
for entrada in "$directorio"/*; do
    if [ -e "$entrada" ]; then  # Verifica si la entrada existe
        if [ -d "$entrada" ]; then
            tipo="Directorio"
        else
            tipo="Fichero"
        fi
        echo "$(basename "$entrada") - $tipo"
        ((contador++))  # Incrementar el contador
    fi
done

# Mostrar el número total de entradas procesadas
echo "Número total de entradas procesadas: $contador"
