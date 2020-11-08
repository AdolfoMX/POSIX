#!/bin/bash
#AUTOR: Adolfo Tun Dzul   MATRICULA: 170300124  
#Leccion 6 - Cambio de atributos de archivo

#1 Muestra el camino de rutas del archivo "hi.txt" 
dirname dir2/dir3/dir4/hi.txt

#2 Muestra el nombre del achivo "hi.txt" eliminando su ruta
basename dir2/dir3/dir4/hi.txt

#3 Cambia el permiso de un archivo de manera interactiva donde todos pueden leerlo y editarlo
chmod -v 666 file1.txt

# Puede escribrirse de otra manera del paso 3
chmod a-rw file1.txt

#4 Cambia el permiso de todos los archivos dentro de "chmod_dir"
chmod -R 644 ~/chmod_dir

#5 Cambia el permiso de los archivos y sub-capertas dentro de "dir2"
chown root:staff -R ~/dir2

#6 Cambia los permisos de un archivo para un grupo de usuarios en específico dentro de "dir2"
#(Reemplaza "user" y "users" por el nombre del usuario y el nombre del grupo)
chown --from=user:users root:staff -R ~/dir2

#7 Cambia el usuario y el grupo de un archivo el "root"
chgrp root file1.txt

#8 Cambia el grupo de la caperta "dir2" y sus sub-carpetas hacia el "root"
chgrp -hR root dir2