#!/bin/bash

#Veificar que se ha pasado un parametro
if [ "$#" -ne 1 ]; then
	echo "Error: La sintaxis correcta es: ./JMGPscript20.sh"
	exit 1
fi

#Verificar que el parametro es un numero entero
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
	echo "Error: Debes introducir un número entero positivo."
	exit 1
fi

#Asignar el número pasado por parámetro
numero=$1

#Los numeros menores que 2 no son primos
if [ "$numero" -lt 2 ]; then
	echo "$numero" no es un número primo."
	exit o
fi

#Verificar si el número es primo
es_primo=1 #Suponemos que es primo inicialmente

for ((i=2; i*i<=numero; i++)); do
	if [ $((numero % i)) -eq 0 ]; then
		es_primo=0 #No es primo si se encuentra un divisor
		break
	fi
done

#Mostrar el resultado
if [ "$es_primo" -eq 1 ]; then
	echo "$numero es un número primo."
else
	echo "$numero no es un número primo."
fi


