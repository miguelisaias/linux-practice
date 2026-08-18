#!/bin/bash
 if [ -f ~/linux-practice/mes-02-bash-ssh/primer-script.sh ];
then
echo "Archivo encontrado"
exit 0
else
echo "Archivo no encontrado"
exit 1
fi
