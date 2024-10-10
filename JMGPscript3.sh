#!/bin/bash

#Definir el nombre del fichero donde se guardará el listado
output_file="listado_etc.txt"

#Listar archivos y directorios de /etc y guardarlos en el archivo
ls -la /etc > "$output_file"

#Imprimir el contenido del archivo por pantalla
cat "$output_file"

#Mostrar el numero  de lineas del archivo
lineas=$(wc -l < "$output_file")
echo "Número de lineas en el archivo: $lineas"

#Mostrar el número de palabras del archivo
palabras=$(wc -w < "$output_file")
echo "Número de palabras en el archivo: $palabras"

#Mensaje de confirmació
echo "El listado de archivos y directorios de /etc ha sido guardado en $output_file, mostrando por pantalla, y se ha contado el numero de líneas y palabras."

