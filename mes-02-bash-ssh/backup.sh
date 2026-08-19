#!/bin/bash

ORIGEN=~/linux-practice
DESTINO=~/backups
FECHA=$(date +%Y-%m-%d)
CARPETA_BACKUP="$DESTINO/backup_$FECHA"
LOG="$DESTINO/backup.log"
if [ ! -d "$ORIGEN" ]; then
   echo "Error: la carpeta origen no existe" >> "$LOG"
   exit 1
fi

mkdir -p "$DESTINO"
mkdir -p "$CARPETA_BACKUP"
cp -r "$ORIGEN"/* "$CARPETA_BACKUP"/

if [ $? -eq 0 ]; then
   echo "$(date): Backup exitoso en $CARPETA_BACKUP" >> "$LOG"
   exit 0
else
   echo "$(date): Backup falló" >> "$LOG"
   exit 1
fi 
