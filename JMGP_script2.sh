#Realiza un scipt que guarde en un fichero el listado de archivos y
#directorios de la carpeta etc, a posteriori que imprima por pantalla
#dicho listado.

#!/bin/bash

#Define la ruta de la carpeta /etc
ruta_carpeta="/etc"

#Define el archivo donde se guardará el listado
archivo_listado="listado_archivos_y_directorios.txt"

#Obten el listado de archivos y directorios y guardalo en el archivo
ls $ruta_carpeta > $archivo_listado

#Imprime el listado por pantalla
cat $archivo_listado


