#!/bin/bash

#Pedir al usuario el primer numero
echo "Por favor, ingresa el primer numero:"
read numero1

#Pedir al usuario el segundo numero
echo "Por favor, ingresa el segundo numero:"
read numero2

#Calcular la media aritmetica
media=$(echo "scale_2; ($numero1 + $numero2) / 2" | bc)

#Mostrar la media
echo "La media aritmetica de $numero1 y $numero2 es: $media"

