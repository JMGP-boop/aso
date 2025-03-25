#!/bin/bash

# Verificar si se proporcionó un número como parámetro
if [ -z "$1" ]; then
  echo "Uso: $0 número"
  exit 1
fi

# Obtener el número del parámetro
numero=$1

# Verificar si el número es menor que 2 (no primo)
if [ "$numero" -lt 2 ]; then
  echo "$numero no es primo."
  exit 0
fi

# Comprobar si el número es divisible por algún otro número
es_primo=1
for ((i=2; i*i<=numero; i++)); do
  if [ $((numero % i)) -eq 0 ]; then
    es_primo=0
    break
  fi
done

# Mostrar el resultado
if [ $es_primo -eq 1 ]; then
  echo "$numero es primo."
else
  echo "$numero no es primo."
fi
