#!/bin/bash

# Verificar si se ha pasado un parámetro
if [ -z "$1" ]; then
  echo "Por favor, proporciona el nombre de un directorio como parámetro."
  exit 1
fi

# Obtener el nombre del directorio del parámetro
directorio=$1

# Verificar si el parámetro es un directorio válido
if [ ! -d "$directorio" ]; then
  echo "$directorio no es un directorio válido."
  exit 1
fi

# Contadores de ficheros y subdirectorios
contador_ficheros=0
contador_subdirectorios=0

# Listar las entradas del directorio
for entrada in "$directorio"/*; do
  if [ -d "$entrada" ]; then
    contador_subdirectorios=$((contador_subdirectorios + 1))
  elif [ -f "$entrada" ]; then
    contador_ficheros=$((contador_ficheros + 1))
  fi
done

# Mostrar las estadísticas
echo "Número de ficheros: $contador_ficheros"
echo "Número de subdirectorios: $contador_subdirectorios"

