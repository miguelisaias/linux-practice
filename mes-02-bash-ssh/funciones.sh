#!/bin/bash

saludar() 
{ echo "Hola, $1"; }

sumar()
{  RESULTADO=$(($1 + $2));
   echo "La suma es: $RESULTADO";
}

saludar "Miguel"
sumar 5 3
