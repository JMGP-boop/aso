#!/bin/bash

#Verificacion de argumentos
if [ "$#" -ne 1 ]; then
	echo "Error. La sintaxis correcta es: ./tabla_multiplicar.sh <número>"
	exit 1
fi

#Asignación del parametro
n=$1

#Verificacion de que el parametro es un numero
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
	echo "Error. Debes introducir un número valido."
	exit 1
fi

#Mostrar la tabla de multiplicar
echo "Tabla de multiplicar del $n:"
for i in {1..10}; do
	resultado=$((i * n))
	echo "$i x $n = $resultado"
done

