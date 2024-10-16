#!/bin/bash

#Pedir al usuario una palabra
echo "Por favor, ingresa una palabra:"
read palabra;

#Añadir la palabra al archivo lista_2.txt
echo "$palabra" >> lista_2.txt

#Confirmar que la palabra fue añadida
echo "La palabra '$palabra' ha sido añadida a lista_2.txt"

