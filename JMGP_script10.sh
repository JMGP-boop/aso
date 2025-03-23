#!/bin/bash

#Solicitar al usuario que introduzca un número
read -p "Introduce un número: " numero

#Verificar si el nḿero es par o impar
if [ $((numero % 2)) -eq 0 ]; then
	echo "El número $numero es par."
else
	echo "El número $numero es impar."
fi

