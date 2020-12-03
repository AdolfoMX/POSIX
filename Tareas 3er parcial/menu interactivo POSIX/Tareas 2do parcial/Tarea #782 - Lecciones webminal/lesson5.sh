#!/bin/bash
#AUTOR: Adolfo Tun Dzul   MATRICULA: 170300124  
#Leccion 5 - Manipular o analizar el contenido del archivo

#1 Busca la palabra "linux" en el archivo hello
grep "linux" hello

#2 Busca la palabra "Hello" en el directorio actual
grep -r 'Hello' .

#3 Hace el mismo resultado del paso 1 pero ignorando el case sensitive
grep -i 'LINUX' hello

#4 Busca la palabra 'linux' en el archivo hello e imprime el numero de linea del archivo
grep -n 'linux' hello

#5 Muestra las lineas que no coinciden con el patron de busqueda
grep -v 'world' hello

#6 Encuentra la linea mas larga del archivo "hello" 
wc -L hello

#7 Ejecuta los siguientes comandos para agregar contenido a los archivos "new.txt" y "linux.txt"
echo -e "col1 col2 r1\ncol5 col6 r2\ncol3 col4 r3 " >> new.txt
echo -e "Hello\nlinux\nProgrammers paradise" >> linux.txt

#8 Muestra la primera columna del archivo "new.txt"
cut -f1 -d' ' new.txt

#9 Muestra la tercera columna del archivo "new.txt"
cut -f3 -d' ' new.txt

#10 Mezcla el contenido de dos archivos
paste hello new.txt

# Otra forma mezcla el contenido de dos archivos pero linea por linea
paste -s hello new.txt

#11 Ordena el contenido de un archivo
sort new.txt

#12 Compara el contenido de dos archivos
diff hello linux.txt