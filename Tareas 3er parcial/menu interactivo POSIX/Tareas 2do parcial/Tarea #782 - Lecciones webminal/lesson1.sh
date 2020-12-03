#!/bin/bash
#AUTOR: Adolfo Tun Dzul   MATRICULA: 170300124  
#Leccion 1 - Comandos basicos para navegar por directorios

#1 Verifica el directorio actual
pwd

#2 Crea la carpeta "dir1"
mkdir -v dir1

#3 Crea la carpeta "dir2"
mkdir -v dir2

#4 Crea la carpeta "dir3" dentro de "dir2"
mkdir -v dir2/dir3

#5 Crea la carpeta "dir4" dentro de "dir3"
mkdir -v dir2/dir3/dir4

# Alternativa para crear "dir4" dentro de diferentes carpetas: 
# mkdir -vp dir2/dir3/dir4

#6 Lista directorios
ls

#7 Lista directorios de manera recursiva
ls -R 

#8 Mueve a la carpeta "dir2"
cd dir2 

#9 Mueve a la carpeta "dir3" estando en "dir2"
cd dir3 

#10 Mueve a una carpeta anterior estando en "dir3"
cd ..

#11 Mueve a una carpeta siguiente estando en "dir2"
cd -

#12 Mueve al directorio principal del usuario
cd 