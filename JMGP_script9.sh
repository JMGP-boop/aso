#!/bin/bash

echo "Selecciona una operación matemática:"
echo "1) Sumar"
echo "2) Restar"
echo "3) Multiplicar"
echo "4) Dividir"
read -p "Introduce una opción (1-4): " opcion

read -p "Introduce el primer número: " num1
read -p "Introduce el segundo número: " num2

case $opcion in
	1)
		resultado=$((num1 + num2))
		echo "El resultado de sumar $num1 y $num2 es: $resultado"
		;;
	2)
                resultado=$((num1 - num2))
                echo "El resultado de restar $num1 y $num2 es: $resultado"
                ;;
	3)
                resultado=$((num1 * num2))
                echo "El resultado de multiplicar $num1 y $num2 es: $resultado"
                ;;
	4)
                if [ $num2 -ne 0 ]; then
			resultado=$(echo "scale=2; $num1 / $num2" | bc)
			echo "El resultado de dividir $num1 entre $num2 es: $resultado"
		else
			echo "Error: No se puede dividir entre 0."
		fi
		;;
	*)
		echo "Opción no válida. Por favor, selecciona una opción entre 1 y 4."
		;;
esac
