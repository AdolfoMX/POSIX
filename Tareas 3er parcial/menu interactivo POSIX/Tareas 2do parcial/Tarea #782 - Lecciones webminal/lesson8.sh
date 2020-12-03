#!/bin/bash
#AUTOR: Adolfo Tun Dzul   MATRICULA: 170300124  
#Leccion 8 - Detalles del sistema y del usuario

#1 Muestra el tiempo de actividad que ha estado funcionando el sistema
uptime

#2 Visualiza la fecha y hora actual
date 

#3 Muestra los usuarios registrados actuales en el sistema
who

#4 Imprime informacion de los usuarios registrados actuales en el sistema
who -a 

#5 Imprime informacion detallada de los usarios actuales en la maquina
w 

#6 Muestra una lista del sistema de archivos de los dispositivos montados
mount

#7 Visualiza el sistema de archivo ext4
mount -t ext4

#8 Muestra el espacio libre en disco los dispositivos montados
df -h 

#9 Muestra la cantidad total de memoria física y de intercambio libre y utilizada en el sistema
free -m 