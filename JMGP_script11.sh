#!/bin/bash

#Verificar que se hayan proporcionado exactamente dos parámetros 
if [ "$#" -ne 2 ]; then
	echo "Error: Se deben indicar dos parámetros posicionales."
	echo  "Uso: $0 <fichero_original> <nombre_copia>"
	exit 1
fi

#Obtener los parámetros
fichero_original=$1
nombre_copia=$2

#Verificar que el primer parámetro exista y sea un archivo ordinario
if [ ! -e "$fichero_original" ]; then
	echo "Error: El fichero '$fichero_original' no existe."
	exit 1
elif [ ! -f "$fichero_original" ]; then
	echo "Error: '$fichero_original' no es un archivo ordinario."
	exit 1
fi

#Verificar que no exista un identificador con el nombre del segundo parametro
if [ -e "$nombre_copia" ]; then
	echo "Error: Ya existe un identificador con el nombre '$nombre_copia'."
	exit 1
fi

#Realizar la copia
cp "$fichero_original" "$nombre_copia"

#Confirmación de la copia
if [ $? -eq 0 ]; then
	echo "El archivo '$fichero_original' se ha copiado exitosamente como '$nombre_copia'."
else
	echo "Error: No se pudo realizar la copia."
fi
