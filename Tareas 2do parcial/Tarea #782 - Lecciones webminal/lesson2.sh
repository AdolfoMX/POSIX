#!/bin/bash
#AUTOR: Adolfo Tun Dzul   MATRICULA: 170300124  
#Leccion 2 - Crear archivos, mostrar contenido y estadísticas

#1 Crea un nuevo archivo
touch file1.txt

#2 Cambia el time stamp del archivo
touch file1.txt

#3 Crea un segundo archivo
touch file2.txt

#4 Muestra el contenido del directorio actual similar a "ls"
dir 

#5 Limpia la pantalla de la terminal
clear

#6 Muestra un mensaje en la terminal
echo "hello"

#7 Redirecciona un mensaje a un nuevo archivo
echo "hello" > hello.txt

#8 Agrega texto "linux" al contenido de "hello.txt"
echo "linux" >> hello.txt 

#9 Agrega texto "world" al contenido de "hello.txt"
echo "world" >> hello.txt

#10 Visualiza el contenido de un archivo
cat hello.txt

#11 Visualiza las dos primeras lineas de un archivo
head -2 hello.txt 

#12 Visualiza las primeras lineas de un archivo
head hello.txt 

#13 Visualiza las dos ultimas lineas de un archivo
tail -2 hello.txt 

#14 Visualiza las ultimas lineas de un archivo
tail hello.txt 

#15 Muestra las estadisticas del archivo "hello.txt"
stat hello.txt

#16 Muestra las estadisticas del archivo "dir1"
stat dir1.txt