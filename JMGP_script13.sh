#!/bin/bash

ARCHIVO="lista.txt"

function menu(){
	echo "AGENDA"
	echo "1. Añadir un registro"
	echo "2. Buscar en la agenda"
	echo "3. Listar todos los registros"
	echo "4. Ordenar registros alfabéticamente"
	echo "5. Borrar el archivo"
	echo "6. Salir"
	echo -n "Selecciona una opcón: "
}

function añadir(){
	echo -n "Nombre: "
	read nombre
	echo -n "Dirección: "
	read direccion
	echo -n "Telefono: "
	read telefono
	echo "$nombre|$direccion|$telefono" >> "$ARCHIVO"
	echo "Registro añadido"
}

function buscar(){
	echo -n "Intoduce el término de busqueda: "
	read termino
	grep -i "$termino" "$ARCHIVO" || echo "No se encontraron coincidencias."
}

function listar(){
	if [[ -f "$ARCHIVO" ]]; then
		echo "Registros en la agenda:"
		cat "$ARCHIVO"
	else
		echo "El archivo no existe."
	fi
}

function ordenar(){
	if [[ -f "$ARCHIVO" ]]; then
		sort "$ARCHIVO" -o "$ARCHIVO"
		echo "Registros ordenados."
	else
		echo "El archivo no existe."
	fi
}

function borrar(){
	if [[ -f "$ARCHIVO" ]]; then
		rm "$ARCHIVO"
		echo "El archivo se ha borrado."
	else
		echo "El fichero no existe."
	fi
}

while true; do
	menu
	read opcion
	case $opcion in
		1) añadir ;;
		2) buscar ;;
		3) listar ;;
		4) ordenar ;;
		5) borrar ;;
		6) echo "¡Hasta luego!"; break ;;
		*) echo "Opción no válida." ;;
	esac
done
