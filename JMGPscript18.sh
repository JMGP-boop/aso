#!/bin/bash

#Pedir al usuario el número máximo
echo -n "Introduce el número máximo: "
read max_num

#Verificar si el numero es válido
if [[ "max_num" =~ ^[0-9]+$ ]]; then
	echo "Error: Debes introducir un número entero positivo."
	exit 1
fi

#Mostrar el patrón
for i in $(seq 1 $max_num); do
	for j in $(seq 1 $i); do
		echo -n "$j"
	done
	echo "" #Imprimir nueva linea despues de cada linea
done


