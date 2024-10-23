#!/bin/bash

#Definir el nombre del archivo de la agenda
archivo="lista.txt"

#Función para mostrar el menú
mostrar_menu(){
	echo "----------------------------------"
	echo "           AGENDA                 "
	echo "----------------------------------"
	echo "1. Añadir un registro"
	echo "2. Buscar entradas"
	echo "3. Listar todo el archivo"
	echo "4. Ordenar alfabéticamente"
	echo "5. Borrar el archivo"
	echo "6. Salir"
	echo ".................................."
}

#Funcion para añadir un registro
añadir(){
	read -p "Introduce el nombre: " nombre
	read -p "Introduce la dirección: " dirección
	read -p "Introduce el teléfono: " telefono

	#Añadir el registro al archivo
	echo "$nombre, $direccion, $telefono" >> "$archivo"
	echo "Registro añadido con éxito."
}

#Funcion para buscar entradas
buscar(){
	read -p "Introduce el termino a buscar (nombre, direccion o telefono): " termino
	echo "Resultados de la busqueda:
	grep - i "$termino" "$archivo" || echo "No se encontraron coincidencias."
}

#Funcion para listar todo el archivo
listar(){
	if [ -f "$archivo" ]; then
		echo "Contenido del archivo:"
		cat "$archivo"
	else
		echo "El archivo no existe o está vacío."
	fi
}

#Funcion para ordenar el archivo alfabeticamente (por nombre)
ordenar(){
	if [ -f "$archivo" ]; then
		sort  -o "$archivo" "$archivo"
		echo "Archivo ordenado alfabéticamente por nombre."
	else
		echo "El archivo no existe o está vacío"
	fi
}

#Funcion para borrar el archivo
borrar(){
	if [ -f "$archivo" ]; then
		rm "$archivo"
		echo "Archivo borrado con éxito."
	else
		exho "El archivo no existe."
	fi
}

#Bucle principal del menú
while true; do
	mostrar_menu
	read -p "Elige una opcion (1-6): " opcion
	case $opcion in
		1)
			añadir
			;;
		2)
			buscar
			;;
		3)
			listar
			;;
		4)
			ordenar
			;;
		5)
			borrar
			;;
		6)
			echo "Saliendo del programa..."
			exit 0
			;;
		*)
			echo "Opción no válida. Por favor, elige una opción entre 1 y 6."
			;;
	esac
	echo ""
done

