#!/bin/bash

echo "Ejecutando script: $0"

# Recorre todos los usuarios proporcionados como parámetros
for USER in "$@"; do
    echo "Usuario utilizado: $USER"
    
    # Bloquear la cuenta del usuario
    passwd -l "$USER"
    
    # Crear un archivo comprimido con su directorio home
    tar cf "/axiu/${USER}.tar.gz" "/home/${USER}"
    
    echo "Procesamiento de $USER completado."
done

echo "Todos los usuarios han sido procesados."
