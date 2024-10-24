#!/bin/bash

# Archivo donde se guardarán los resultados
archivo_resultados="archivos_peligrosos.txt"

# Limpiar el archivo si ya existe
> "$archivo_resultados"

# Buscar ficheros que pueden ser modificados por cualquier usuario
find . -type f -perm /222 -exec ls -l {} \; | grep '^-' >> "$archivo_resultados"

echo "Búsqueda completa. Los ficheros peligrosos se han guardado en '$archivo_resultados'."
