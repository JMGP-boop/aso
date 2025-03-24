#!/bin/bash

if [[ $# -lt 4 || $# -gt 5 ]]; then
	echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
	exit 1
fi

operacion=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=$5

#Generar identificativo alu XXYYZ
identificativo="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"

case $operacion in
	alta)
		if id "$identificativo" &>/dev/null; then
			echo "El usuario $identificativo ya existe."
		else
			if [[ -z $grupo ]]; then
				grupo=$identificativo
				grupoadd "$grupo"
				echo "Grupo $grupo creado."
			fi
			useradd -m -g "$grupo" -c "$nombre $apellido1 $apellido2" "$identificativo"
			echo "Usuario $identificativo creado con el grupo $grupo."
		fi
		;;
	baja)
		if id "$identificativo" &>/dev/null; then
			userdel -r "identificativo"
			echo "Usuario $identiicativo dado de baja."
		else
			echo "El usuario $identificativo no existe."
		fi
		;;
	*)
		echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
		exit 1
		;;
esac
