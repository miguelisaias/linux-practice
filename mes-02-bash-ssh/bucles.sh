#!/bin/bash

# Recorre una lista simple
for NOMBRE in Ana Juan Pedro; do
echo "Hola, $NOMBRE"
done

# Recorrer un rango de numeros
for i in {1..5}; do
echo "Numero: $i"
done

#Recorrer archivos de una carpeta
for archivo in ~/linux-practice/mes-02-bash-ssh/*.sh; do 
echo "Encontre: $archivo"
done
