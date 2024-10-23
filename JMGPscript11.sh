#!/bin/bash

#Asigar parámetros a variables
archivo_origen="$1"
archivo_destino="$2"

# b) Verificar que el primer parámetro sea un archivo ordinario y que exista
if [ ! -f "$archivo_origen" ]; then
	echo "Error: El archivo '$archivo_origen' no existe o no es un archivo ordinario."
	exit 1
fi

# c) Verificar que no exista un archivo o directorio con el nombre del segundo parametro
if [ -e "$archivo_destino" ]; then
	echo "Error: Ya existe un archivo o directorio con el nombre '$archivo_destino'."
	exit 1
fi

# d) Realizar la copia del archivo
cp "$archivo_origen" "archivo_destino"

#Confirmación de exito
if [ "$?" -eq 0 ]; then
	echo "Copia realizada con exito: '$archivo_origen' -> '$archivo_destino'."
else
	echo "Error: no se pudo realizar la copia."
	exit 1
fi

