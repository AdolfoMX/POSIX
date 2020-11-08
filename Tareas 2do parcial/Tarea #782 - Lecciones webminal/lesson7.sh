#!/bin/bash
#AUTOR: Adolfo Tun Dzul   MATRICULA: 170300124  
#Leccion 7 - Localizar un archivo y su tipo

#1 Visualiza el tipo de un archivo
file linux.txt

#2 Visualiza "null" como un caracter especial
file /dev/null

#3 File puede visualizar el sistema de archivos de dispositivos especiales
file -s /dev/sda2

# En el paso 3 imprime un mensaje de error la razon es porque es un sector de sistema de arranque x86

#4 Busca la localizacion de un archivo o comando especifico
whereis ls

#5 Busca los archivos donde se ejecutan de un determinado programa, archivo o comando
which php

#6 Busca el archivo "linux.txt" en cualquier directorio del sistema
find ~ -name "linux.txt"

#7 Busca todos los archivos del directorio actual con expresiones regulares
find . -type f -exec file '{}' \;

#8 Busca todos los archivos del directorio actual junto con sus atributos con expresiones regulares
find . -type f -exec ls -l '{}' \;

#9 Busca todos los archivos con un tamaño mayor de 20 bytes
find ~ -type f -size +20c -exec ls -hl {} \;

#10 Busca y copia todos los archivos con un tamaño mayor de 20 bytes en la carpeta "dir1"
find ~ -type f -size +20c -exec cp dir1 {} \;