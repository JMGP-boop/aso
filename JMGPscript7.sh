#Obtener la fecha en formato yyyy-mm-dd
fecha=$(date +"%Y-%m-%d")

#Obtener el nombre del directorio sin la ruta completa
echo ¿Escribe el nombre del directorio?
read nombre_directorio

#Crear el nombre del archivo de salida
archivo_salida="${fecha}-${nombre_directorio}.tar.gz"

#Crear el archivo tar.gz
tar -czf "$archivo_salida" -C "$(dirname "$1")" "$nombre_directorio"

#Informar al usuario
echo "Archivo comprimido creado: $archivo_salida"

