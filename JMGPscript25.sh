#!/bin/bash

# Mostrar los últimos usuarios que iniciaron sesión con sus IPs
echo "Últimos usuarios que iniciaron sesión (con direcciones IP):"
last | egrep -i "([0-9]{1,3}\.){3}[0-9]{1,3}"  # Filtra las líneas que contienen una dirección IP
