#!/bin/bash

# Ruta del archivo log
LOG_PATH="/home/scripts/tema2/espacio_disco.log"

#Fecha y hora actuales
echo "$(date '+%Y-%m-%d %H:%M:%S') - Estado del espacio en disco:" >> "$LOG_PATH"

#Obtiene el espacio en disco y agrega el log
df -h  --output=source,size,used,avail | grep '^/dev/' >> "$LOG_PATH"

echo "Estado del espacio en disco registrado en $LOG_PATH"

