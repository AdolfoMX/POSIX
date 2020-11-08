#!/bin/bash
#AUTOR: Adolfo Tun Dzul   MATRICULA: 170300124  
#Leccion 4 - Comandos de proceso básicos

#1 Muestra una lista de procesos actuales
ps 

#2 Crea un nuevo proceso
sleep 60 &

#3 Ejecuta y analiza su salida
ps 

#4 Mata el proceso "12345" del paso 2 (Reemplaza el proceso "60" por "12345")
kill 12345

#5 Verifica si el proceso sigue en proceso
ps 

#6 Obliga matar el proceso "12345" enviando la opcion "-9"
kill -9 123456

#7 Crea dos procesos
sleep 30 &
sleep 30 &

#8 Mata los procesos asociados con el nombre de "sleep"
killall sleep

#9 Mata los procesos del usario actual (Reemplaza "user" con tu nombre de usuario)
killall -u user

#10 Mata los procesos asociados con el comando "find" en el usuario actual
killall -w find

#11 Obtiene el "PID" del proceso de bash
pidof bash
pidof -s bash

#12 Cambia la prioridad de un proceso
nice -n 19 sleep 30 &
renice -n 19 12345

# Otra forma de cambiar prioridad de un proceso 
# (Reemplaza el "PID" por el "ID" de un proceso que tengas hecho o crea uno)
renice +1 PID
renice +4 PID

#13 Cambia el proceso del usuario actual (Reemplaza "user" con tu nombre usuario)
renice +1 -u user

#14 Visualiza los procesos en ejecución 
top

#15 Muestra un árbol de procesos (Si usas -p muestra el PID de los procesos)
pstree
pstree -p 

#16 Muestra el tiempo en que tarda en ejecutarse un comando
time ls -l