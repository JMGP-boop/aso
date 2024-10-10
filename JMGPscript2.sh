#/bin/bash

#Definimos el nombre del fichero donde se guardará el listado
output_file="listado_etc.txt"

#Listar archivos y directorios de /etc y guardarlos en el archivo
ls -la /etc > "$output_file"

#Imprimir el contenido del archivo por pantalla
cat "$output_file"

#Mensaje de confirmación 
echo "El listado de archivos y directorios de /etc ha sido guardado en $output_file y mostrado por pantalla."


