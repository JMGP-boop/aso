#/bin/bash

#Solicitar dos numeros al usuario
echo "Introduce el primer número:"
read num1
echo "Introduce el segundo número:"
read num2

#Comprobar los números
if [ "$num1" -gt "$num2" ]; then
	echo "El número $num1 es mayor que $num2."
elif [ "$num2" -gt "$num1" ]; then
	echo "El número $num2 es mayor que $num1."
else
	echo "Los números son iguales."
fi
