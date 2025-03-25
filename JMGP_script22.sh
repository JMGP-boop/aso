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

# Contador de entradas procesadas
contador=0

# Listar las entradas del directorio
for entrada in "$directorio"/*; do
  if [ -d "$entrada" ]; then
    echo "$entrada es un directorio."
  elif [ -f "$entrada" ]; then
    echo "$entrada es un fichero."
  fi
  contador=$((contador + 1))
done

# Mostrar el número total de entradas procesadas
echo "Número total de entradas procesadas: $contador"