#!/bin/bash

suma=0
numero=1 #Inicializamos con un valor diferente de 0 para entrar en el bucle

#Bucle hasta que se introduzca un 0
while [ "$numero" -ne 0 ]; do
	echo -n "Introduce un número (0 para terminar):"
	read numero
	suma=$((suma + numero))
done

#Restamos el 0 que ha detenido el bucle
suma=$((suma - 0))

echo "La suma total de los números introducidos es: $suma"

