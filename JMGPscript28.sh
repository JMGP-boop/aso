#!/bin/bash

# Función para obtener información de la red
obtener_info_red() {
    # Obtener la dirección IP y la máscara de subred
    read -r ip red mascara <<< $(ip addr show | grep 'inet ' | awk '{print $2}' | head -n 1 | sed 's/\(.*\)\///;s/\(.*\)//')
    cidr=$(ipcalc -p "$ip" "$mascara" | awk '{print $2}')
    broadcast=$(ipcalc -b "$ip" "$mascara" | grep 'Broadcast' | awk '{print $2}')
    
    echo "Dirección IP: $ip"
    echo "Máscara de subred: $mascara"
    echo "Broadcast: $broadcast"
    echo "Tipo de red (CIDR): $cidr"
}

# Función para comprobar IPs libres
comprobar_ips() {
    # Obtener el rango de la red
    IFS='/' read -r base rango <<< "$1"

    echo "Listado de IPs en la red:"

    # Iterar sobre el rango de IPs
    for i in {1..254}; do
        ip="$base.$i"
        if ping -c 1 -W 1 "$ip" &> /dev/null; then
            estado="Ocupada"
        else
            estado="Libre"
        fi
        echo "$ip - $estado"
    done
}

# Obtener información de la red
info_red=$(obtener_info_red)

# Mostrar la información de la red
echo "$info_red"
echo

# Comprobar IPs libres
echo "Comprobando IPs libres..."
comprobar_ips "$info_red"
