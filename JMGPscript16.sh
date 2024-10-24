#!/bin/bash

suma=0

#Sumar los números del 1 al 1000 usando for
for i in {1..1000};do
	suma=$((suma+i))
done

echo "La suma de los números del 1 al 1000 usando for es: $suma"

suma=0
i=1

#Sumar los números del 1 al 1000 usando while
while [$i - le 1000 ]; do
	suma=$((suma+i))
	i=$((i+1))
done

echo "La suma de los numeros del 1 al 1000 usando while es: $suma."

suma=0
i=1

#Sumar los numeros del 1 al 1000 usando until
until [$i -gt 1000]; do
	suma=$((suma + i))
	i=$((i+1))
done

echo "La suma de los numeros del 1 al 1000 usando until es: $suma."


