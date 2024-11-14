#!/bin/bash

#Define variables
DEST_DIR="/copias"
BACKUP_FILE="$DEST_DIR/backup_home_$(date +%Y%m%d%H%M%S).tar.gz"
LOG_FILE="/copias/backup.log"

#Escribe la hora de inicio en el archivo log
echo "Inicio de copia: $(date '+%Y-%m-%d %H:%M:%S')" >> "$LOG_FILE"

#Realiza la copia de seguridad del directorio /home
if tar -czf "$BACKUP_FILE" /home 2>> "$LOG_FILE"; then
	echo "Copia completada correctamente: $(date '+%Y-%m-%d %H:%M:%S')" >> "$LOG_FILE"
else
	echo "Error en la copia: $(date '+%Y-%m-%d %H:%M:%S')" >> "$LOG_FILE"
fi

#Separador para el siguiente log
echo "-----------------------------------------------" >> "$LOG_FILE"
