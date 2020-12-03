#!/bin/bash
#AUTOR: Adolfo Tun Dzul   MATRICULA: 170300124  
#Leccion 9 - Comandos basicos con los procesos de Linux - PARTE 1

#1 Visualiza el nombre host del sistema y dominio
hostname

#2 Visualizar el tipo de archivo de "hostname"
file /bin/hostname

# "hostname" es un archivo ejecutable ELF de 32 bits Cuando decimos su archivo ejecutable, 
# /bin/hostname contiene instrucciones almacenadas en formato binario, estas instrucciones serán 
# del núcleo para realizar alguna tarea o acción

#3 Visualizar el contenido de "/bin/hostname"
cat /bin/hostname

# Cuando escribimos un ejecutable '/bin/hostname' en el indicador de bash, su contenido, lo que sea que haya 
# visto en las líneas anteriores, se carga en la RAM. Kernel sigue esas instrucciones y toma medidas.
# La definicion de un proceso es: "El proceso no es más que un contenido de archivo que reside en la RAM"

#4 Muestra los archivos que estan en la RAM
ps 

##-- PROCESO PADRE --##
#5 Obtiene el ID padre del proceso "31400" (Verificar con ps la lista de procesos y probar uno)
ps -o ppid 31400

#6 Obtiene el ID padre del proceso "31400" e imprime el nombre de quien lo
# esta ejecutando (Verificar con ps la lista de procesos y probar uno)
ps -o ppid,cmd 31400