#!/bin/bash
#AUTOR: Adolfo Tun Dzul   MATRICULA: 170300124  
#Leccion 10 - Comandos basicos con los procesos de Linux - PARTE 2

##-- PROCESOS EN SEGUNDO PLANO --##
#1 Crea un proceso y detiene la terminal por un momento
sleep 5
sleep 2

# La forma en que bash crea un proceso hijo está bloqueando la llamada. Significa, ejecute el proceso hijo 
# y espere a que se complete y luego regrese a mí nuevamente la razon el cual se congela por un momento la terminal

#2 Pone un proceso hijo en segundo plano solo agregando el caracter "&"
sleep 5 &

#3 Muestra la lista de procesos (Verfica que sleep 5 aparezca en los procesos)
ps 

#4 Visualiza los procesos padre e hijo (Analiza su salida primero haciendo el paso 2 y ejecuta el comando de abajo),
# el proceso "5254" esta de ejemplo prueba otro como por ejemplo el proceso del "sh"
pstree 5254

#5 Visualiza los procesos padre e hijo con su "PID" (Realizar de nuevo el paso 2 y 4 para su visualizacion)
pstree -p 5254

#6 Inicia cinco procesos 
sleep 45 &
sleep 45 &
sleep 45 &
sleep 45 &
sleep 3000 &

# Visualiza los procesos padre e hijo con su "PID" (Analiza su salida)
pstree -p 5254

# Recuerda cambiar el proceso "5254" ya que esta de ejemplo, usa uno como el de "sh"

##-- LISTA DE PROCESOS EN SEGUNDO PLANO --##
#7 Visualiza los trabajos de segundo plano (Realiza el paso 6 y despues ejecuta el comando de abajo)
jobs

##-- PROCESOS EN PRIMER PLANO --##
#8 Reanuda los procesos suspendidos poniendolos en primer plano 
# (Realiza el paso 6 y elige el proceso [5] ejecutando el comando de abajo)
fg 5

##-- CAMBIAR UN PROCESO DE PRIMER PLANO A SEGUNDO PLANO --##
#9 Crea un proceso en primer plano
sleep 3000

#10 Detiene el proceso del paso 9
CTRL + Z

#11 Verifica el estatus del proceso del paso 9 (Realiza el paso 9 y 10 de manera seguida)
jobs

#12 Reanuda los procesos suspendidos poniendolos en segundo plano (Realiza de manera seguida los pasos 9, 10 y 11)
bg 1