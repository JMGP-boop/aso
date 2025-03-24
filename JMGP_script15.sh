#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Error: Debes pasar exactamente un número como argumento."
	echo "Uso: $0 n"
	exit 1
fi

numero=$1

if ! [[ $numero =~ ^[0-9]+$ ]]; then
	echo "Error: El argumento debe ser un número entero positivo."
	exit 1
fi

echo "Tabla de multiplicar del $numero:"
for i in {1..10}; do
	resultado=$((i * numero))
	echo "$i x $numero = $resultado"
done

