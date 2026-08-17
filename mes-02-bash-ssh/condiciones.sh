#!/bin/bash
echo "Ingresá un número:"
read NUMERO

if [ $NUMERO -gt 10 ]; then
    echo  "Es mayor a 10"
elif [ $NUMERO -eq 10 ]; then
    echo "Es exactamente 10"
else
    echo "Es menor que 10"
fi 
# Verificar si un archivo existe
if [ -f ~/bash-practice/primer-script.sh ]; then
    echo "El archivo existe"
else 
    echo "El archivo no existe"
fi
