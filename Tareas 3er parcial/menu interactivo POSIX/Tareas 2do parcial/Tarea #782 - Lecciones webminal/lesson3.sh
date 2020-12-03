#!/bin/bash
#AUTOR: Adolfo Tun Dzul   MATRICULA: 170300124  
#Leccion 3 - Copiar, renombrar, borrar archivos

#1 Muestra el uso del disco del directorio actual
du

#2 Muestra el uso del disco del directorio actual en un formato legible
du -xh ~

#3 Muestra el tamaño de todas las carpetas este proceso puede tardar
du --max-depth 3 ~

#4 Copia el archivo "hello.txt" en la carpeta "dir2"
cp -v hello.txt dir

#5 Copia todos los archivos ".txt" de la carpeta "dir2" a la carpeta "dir2/dir3"
cp -vr dir2/*.txt dir2/dir3

#6 Copia todos los archivos ".txt" de la carpeta "dir2/dir3" hacia el directorio actual
cp -vr dir2/dir3 .

#7 Muestra el contenido del directorio actual
ls

#8 Imprime la integridad de un archivo si es grande o binario
md5sum hello.txt

#9 Imprime la integridad de un archivo si es grande o binario pero con una ruta
md5sum dir2/hello.txt

#10 Mueve el archivo "hello.txt" a "dir2/dir3/dir4/hi.txt"
mv hello.txt dir2/dir3/dir4/hi.txt

#11 Crea una nueva carpeta "dir5"
mkdir dir5

#12 Mueve todos los archivos ".txt" de la carpeta "dir2" a la carpeta "dir5"
mv dir2/*.txt dir5

#13 Renombra la carpeta "dir5" a "dir50"
mv dir5 dir50

#14 Crea un enlace "hello" hacia el directorio actual de "dir2/dir3/dir4/hi.txt"
ln  dir2/dir3/dir4/hi.txt hello

#15 Muestra el atributo de cada archivo
stat hello
stat dir2/dir3/dir4/hi.txt

#16 Crea un acceso directo "softlink" hacia el directorio actual de "dir2/dir3/dir4/hi.txt"
ln -s  dir2/dir3/dir4/hi.txt  softlink

#17 Muestra el inode de "softlink"
stat softlink

#18 Elimina el archivo "file2.txt" de manera interactiva
rm -i file2.txt

#19 Elimina todos los achivos de manera recursiva en "dir50"
rm -ri dir50/*

#20 Elimina la carpeta "dir50"
rmdir dir50