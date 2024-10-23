#!/bin/bash

#Función para mostrar el menú
mostrar_menu(){
	echo "Seleccione una operación:"
	echo "1. Sumar"
	echo "2. Restar"
	echo "3. Multiplicar"
	echo "4. Dividir"
	echo "5. Salir"
}

#Funcion para solicitar los numeros
pedir_numeros(){
	read -p "Introduce el primer numero: " numero1
	read -p "Introduce el segundo número: " numero2
}

#Bucle principal para el menú
while true; do
	mostrar_menu
	read -p "Elige una opción (1-5):" opcion

	case $opcion in
		1)
			pedir_numeros
			resultado=$((numero1 + numero2))
			echo "Resultado: $numero1 + $numero2 = $resultado"
			;;
		2)
                        pedir_numeros
                        resultado=$((numero1 - numero2))
                        echo "Resultado: $numero1 - $numero2 = $resultado"
                        ;;
		3)
                        pedir_numeros
                        resultado=$((numero1 * numero2))
                        echo "Resultado: $numero1 * $numero2 = $resultado"
                        ;;
		4)
			pedir_numeros
			#Verificar si el segundo número es 0 para evitar la division
			if [ "$numero2" -eq 0 ]; then
				echo "Error: No se puede dividir por 0."
			else
				resultado=$(echo "scale=2; $numero1 / $numero2" | bc)
				echo "Resultado: $numero1 / $numero2 = $resultado"
			fi
			;;
		5)
                        echo "Saliendo...."
                        exit 0
                        ;;
		*)
			echo "Opción no válida, por favor selecciona una opción entre 1 y 5."
			;;
	esac
	echo ""
done




