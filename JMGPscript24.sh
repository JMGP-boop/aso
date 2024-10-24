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

# Inicializar contadores
contador_ficheros=0
contador_directorios=0

# Contar ficheros y subdirectorios
for entrada in "$directorio"/*; do
    if [ -e "$entrada" ]; then  # Verifica si la entrada existe
        if [ -d "$entrada" ]; then
            ((contador_directorios++))
        elif [ -f "$entrada" ]; then
            ((contador_ficheros++))
        fi
    fi
done

# Mostrar estadísticas
echo "Estadísticas en el directorio '$directorio':"
echo "Número de ficheros: $contador_ficheros"
echo "Número de subdirectorios: $contador_directorios"
