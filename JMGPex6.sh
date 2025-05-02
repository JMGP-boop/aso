#!/bin/bash

# Función para comprobar si el usuario existe
usuario_existe() {
    if id "$1" &>/dev/null; then
        return 0
    else
        echo "Error: El usuario '$1' no existe."
        exit 1
    fi
}

USER=$1

# Comprobamos si se ha proporcionado un usuario
if [ -z "$USER" ]; then
    echo "Uso: $0 <nombre_de_usuario>"
    exit 2
fi

# Llamamos a la función para verificar si el usuario existe
usuario_existe "$USER"

echo "Ejecutando script: $0"
echo "Usuario Utilizado: $USER"

# Bloqueamos la cuenta del usuario
passwd -l "$USER"

# Creamos un archivo tar de su directorio home
tar cf "/axiu/${USER}.tar.gz" "/home/${USER}"

echo "Proceso completado exitosamente."
