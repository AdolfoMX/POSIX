#!/bin/bash
#AUTOR: Adolfo Tun Dzul   MATRICULA: 170300124  
#Leccion 11 - Comandos basicos con los procesos de Linux - PARTE 3

##-- ESTADOS DEL PROCESO DE LINUX --##
#1 Ejecuta el manual de ps
man ps

# Leer la seccion de "PROCESS STATE CODES" para analizar los diferentes estados de los procesos

##-- INTERRUPTIBLE SLEEP (S) --##
#2 Reproduce el estado de "S (Interruptible sleep)" y muestra los "STAT" de los procesos
ps -S

# En el paso 2 se mantiene en "Interruptible sleep" significa que nuestro bash/shell esta esperando 
# que se complete su proceso hijo "28682" y el "+" dice que se esta ejecutando en el primer plano

#3 Detiene el proceso bash/shell
ps S

##-- STOPPED (T) --##
#4 Crea un proceso 
sleep 100

#5 Detener el proceso
CTRL + Z

#6 Muestra el estado "T (Stopped)" (Reproducir los pasos 4, 5 y ejecutar el comando de abajo de manera seguido)
ps S

# El proceso sleep 100 se encuentra detenido pero no terminado, significa que en cualquier 
# momento se puede reanudar

#7 Imprime hasta 500000 y despues deten el proceso
seq  1  500000
CTRL + Z

#8 Analiza la salida si esta en "Stopped" el proceso de "seq"
ps S

##-- PROCESO ZOMBIE --##
# Se conoce como proceso zombi a un proceso que ha concluido pero que aun esta presente en la tabla de procesos

#9 Crea dos sub-shell
bash 
bash

# Revisar las "PID" de las sub-shell creadas

#10 Mata el proceso simulando un "proceso zombie"
( ( kill -STOP 31304 ) 

# Recuerda revisar las PID de las sub-shell en mi caso fueron "31304" y "31395"

#11 Muestra los trabajos de segundo plano (Revisa si aun sigue el proceso con vida)
jobs

#12 Reanuda el proceso zombie en primer plano
fg 1 

# El numero "1" es la posicion asignada en los trabajos puedes revisar el tuyo con el comando "jobs"

#13 Checar el status
ps S 

##-- PROCESO HUERFANO --##
# Los procesos huérfanos son aquellos que se siguen ejecutando a pesar de que su proceso primario (padre) concluyo su operación
#14 Crea una sub-shell
bash

#15 Visualiza los procesos (Elige el "PID" de un proceso de bash que creaste porque se hara uso en el paso 16)
ps S 

#16 Mata el proceso padre
( sleep 100 & ( kill -9 3329 ))

# Recuerda que el PID del paso 16 es un ejemplo

#17 Verifica si el proceso esta muerto 
ps S

#17 Obtiene un proceso padre asi adoptando el proceso huerfano
ps -o ppid 1868