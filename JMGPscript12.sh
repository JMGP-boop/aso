#!/bin/bash

#Obtener la hora actual en formato de 24 horas (solo la hora)
hora=$(date +"%H")

#Comprobar en qué rango de horas está y mostrar el mensaje correspondiente
if [ "$hora" -ge 8 ] && [ "$hora" -lt 15 ]; then
	echo "Buenos dias"
elif [ "$hora" -ge 15 ] && [ "$hora" -lt 20 ]; then
	echo "Buenas tardes"
else
	echo "Buenas noches"
fi

