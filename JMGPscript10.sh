#!/bin/bash

#Solicitar un número al ususario
read -p "Introduce un número: " numero

#Verificar si el nombre es par o impar
if [ $((numero % 2)) -eq 0 ]; then
	echo "El número $numero es par."
else
	echo "El número $numero es impar."
fi

