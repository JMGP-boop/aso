#!/bin/bash

#Solicitar el primer numero al usuario
read -p "Introduce el primer numero: " numero1

#Solicitar el segundo número al usuario
read -p "Introduce el segundo número: " numero2

#Comparar los dos números
if [ "$numero1" -gt "$numero2" ]; then
	echo "El número $numero1 es mayor que $numero2."
elif [ "$numero1" -lt "$numero2" ]; then
	echo "El número $numero2 es mayor que $numero1."
else
	echo "Ambos números son iguales."
fi

