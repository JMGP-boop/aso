#!/bin/bash

# Función para comprobar si el usuario existe
usuario_existe() {
    if id "$1" &>/dev/null; then
        return 0
    else
        echo "Error: El usuario '$1' no existe."
        return 1
    fi
}

# Comprobamos si se han proporcionado usuarios
if [ $# -eq 0 ]; then
    echo "Uso: $0 <nombre_de_usuario1> <nombre_de_usuario2> ..."
    exit 2
fi

echo "Ejecutando script: $0"

# Iteramos sobre los usuarios proporcionados
for USER in "$@"; do
    echo "Usuario Utilizado: $USER"

    # Verificamos si el usuario existe
    if usuario_existe "$USER"; then
        # Bloqueamos la cuenta del usuario
        passwd -l "$USER"

        # Creamos un archivo tar de su directorio home
        tar cf "/axiu/${USER}.tar.gz" "/home/${USER}"

        echo "Proceso completado para el usuario: $USER"
    fi
done

echo "Script finalizado."
