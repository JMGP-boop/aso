#!/bin/bash

# Número a adivinar (fijo)
numero_a_adivinar=42

echo "¡Bienvenido al juego de adivinar el número!"
echo "Intenta adivinar el número del 1 al 100"
echo "Intorduce 0 si te rindes."

while true; do
    #Pedir al usuario que introduzca un numero
    read -p "INtroduce un número: " numero_usuario

    #Verificar si el usuario se rinde
    if [ "$numero_usuario" -eq 0 ]; then
        echo "Te has rendido. El número era $numero_a_adivinar."
        break
    fi

    #Verificar si el usuario ha adivinado el número
    if [ "$numero_usuario" -eq "$numero_a_adivinar" ]; then
        echo "¡Enhorabuena! Has adivinado el numero."
        break
    elif [ "$numero_usuario" -lt "$numero_a_adivinar" ]; then
        echo "Elnúmero es mayor que $numero_usuario."
    else
        echo "El número es menor que $numero_usuario."
    fi
done
