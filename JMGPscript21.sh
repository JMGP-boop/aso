#!/bin/bash

# Número a adivinar
numero_a_adivinar=42  # Puedes cambiar este número

echo "¡Bienvenido al juego de adivinar el número!"
echo "Estoy pensando en un número del 1 al 100."
echo "Introduce un número para intentar adivinarlo (o 0 para rendirte):"

while true; do
    read -p "> " intento

    if [[ $intento -eq 0 ]]; then
        echo "Te has rendido. El número era $numero_a_adivinar."
        break
    elif [[ $intento -lt $numero_a_adivinar ]]; then
        echo "El número es mayor. Intenta de nuevo."
    elif [[ $intento -gt $numero_a_adivinar ]]; then
        echo "El número es menor. Intenta de nuevo."
    else
        echo "¡Enhorabuena! Has adivinado el número."
        break
    fi
done
