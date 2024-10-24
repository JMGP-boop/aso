#!/bin/bash

#Funcion para mostrar error en caso de sintaxis incorrecta
mostrar_error(){
	echo "Error, la sintaxis correcta es: ./JMGPscript14.sh alta/baja nombre apellido1 apellido2 [grupo]"
	exit 1
}

#Verificacion de numero de argumentos
if [ "$#" -lt 4 ] || [ "$#" -gt 5 ]; then
	mostrar_error
fi

#Asignacion de variables
accion=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=$5

#Creacion del identificador de usuario
id_usuario="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"

#Acción en caso de alta
if [ "$accion" == "alta" ]; then
	#Si no se proporciona grupo, se usa el identificador de usuario como grupo
	if [ -z "$grupo" ]; then
		grupo=$id_usuario
		#Crear el grupo si no existe
		if ! getent group "$grupo" >/dev/null; then
			groupadd "$grupo"
			echo "Grupo $grupo creado."
		fi
	fi

	#Crear el usuario si no existe
	if ! id "$id_usuario" &>/dev/null; then
		useradd -m -g "$grupo" "$id_usuario"
		echo "Usuario $id_usuario creado con el grupo $grupo."
	else
		echo "El usuario $id_usuario ya existe."
	fi

#Accion en caso de baja
elif [ "$accion" == "baja" ]; then
	if ! id "$id_usuario" &>/dev/null; then
		userdel -r "$id_usuario"
		echo "Usuario $is_usuario eliminado."
	else
		echo "El usuario $id_usuario no existe."
	fi

#Cualquier otra opcion muestra un error
else
	mostrar_error
fi


