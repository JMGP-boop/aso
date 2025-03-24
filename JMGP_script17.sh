#!/bin/bash

suma=0

echo "Introduce ḿeros para sumar (introduce 0 para terminar):"

while true; do
	read -p "Número: " numero

	if [[ $numero -eq 0 ]]; then
		echo "Resultado final: $suma"
		break
	fi

	suma=$((suma + numero))
	echo "Suma parcial: $suma"
done


