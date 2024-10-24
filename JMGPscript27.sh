#!/bin/bash

# Función para verificar si un fichero existe
existe() {
    if [ -e "$1" ]; then
        return 0  # El fichero existe
    else
        return 1  # El fichero no existe
    fi
}

# Verificar que se ha pasado un argumento
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 nombre_del_fichero"
    exit 1
fi

fichero="$1"

# Llamar a la función para verificar la existencia del fichero
if existe "$fichero"; then
    echo "El fichero '$fichero' existe. Cambiando permisos..."
    chmod u+x "$fichero"  # Cambiar permisos a ejecutable para el propietario
    echo "Permisos cambiados: El fichero ahora es ejecutable para el propietario."
else
    echo "El fichero '$fichero' no existe."
fi
