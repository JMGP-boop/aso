#!/bin/bash

#Obtener la hora actual en formato de 24 horas
hora_actual=$(date +%H)

#Determinar el mensaje según la hora
if [ "$hora_actual" -ge 8 ] && [ "$hora_actual" -lt 15 ]; then
	echo "Buenos dias"
elif [ "$hora_actual" -ge 15 ] && [ "$hora_actual" -lt 20 ]; then
        echo "Buenas tardes"
else
	echo "Buenas noches"
fi


