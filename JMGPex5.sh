v1

#!/bin/bash

# Comprobamos si se ha proporcionado un argumento
if [ -z "$1" ]; then
    echo "Uso: $0 <nombre_de_archivo>"
    exit 3
fi

# Evaluamos el tipo de archivo
if [ -f "$1" ]; then
    echo "0"
    exit 0
elif [ -d "$1" ]; then
    echo "1"
    exit 1
else
    echo "2"
    exit 2
fi


v2

#!/bin/bash

# Comprobamos si se ha proporcionado un argumento
if [ -z "$1" ]; then
    echo "Uso: $0 <nombre_de_archivo>"
    exit 3
fi

# Evaluamos el tipo de archivo
if [ -f "$1" ]; then
    echo "$1 es un archivo regular."
    exit 0
elif [ -d "$1" ]; then
    echo "$1 es un directorio."
    exit 1
else
    echo "$1 es otro tipo de archivo."
    exit 2
fi


./script.sh archivo.txt && echo "Es un archivo regular"
