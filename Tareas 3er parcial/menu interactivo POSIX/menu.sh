#!/bin/bash
# AUTOR: Adolfo TUn Dzul   MATRÍCULA: 170300124
# Proyecto final parcial 3 - menu interactivo

#------ Funciones ------#
mensaje()
{
	read -p "Presiona el teclado [ Enter ] para continuar..." enter
}

# Menu de tareas del parcial 1
parcial1()
{
	bandera=0
	while [ "$bandera" -eq 0 ]
	do
		clear
		cowsay -f kosh hola usuario, ¿Qué deseas observar hoy? | lolcat
		date

		# Mensaje del Menú
		echo "----------------------------"
		echo -e "\e[1;93m    Trabajos parcial 1        \e[0m"
		echo "----------------------------"
		echo
		echo -e "1. \e[96mTarea #999 - Grabacion de practica\e[0m"
		echo -e "2. \e[96mTarea #998 - Niveles bandit\e[0m"
		echo -e "3. \e[96mTarea #996 - Cmd challenge\e[0m"
		echo -e "4. \e[96mTarea #995 - Linux labs\e[0m"
		echo -e "5. \e[96mRegresar [ menú principal ]\e[0m\n"
		read -p "Porfavor ingrese una opcion: " opc

		# Selección de opciones
		case "$opc" in 
			1)
				cat "Tareas 1er parcial"/"Tarea #999 - Grabacion de practica.txt" | fzf --reverse 
				clear
				echo
			    mensaje 
			;;
			2)
				cat "Tareas 1er parcial"/"Tarea #998 - Niveles Bandit"/"Tarea #998 - Niveles Bandit.txt" | fzf --reverse
				clear
				echo
				mensaje
			;;
			3)
				cat "Tareas 1er parcial"/"Tarea #996 - Cmd challenge"/"Tarea #996 - Cmd challenge.txt" | fzf --reverse
				clear
				echo
				mensaje
			;;
			4)
				menutarea995
			;;
			5)
				bandera=1
			;;
			*) 
				echo -e "\n-->[\e[1;91m $opc \e[0m]<-- Opción inválida!"
				echo
				mensaje
			;;
		esac
	done 
}

# Menu de tareas del parcial 2
parcial2()
{
	bandera=0
	while [ "$bandera" -eq 0 ]
	do
		clear
		cowsay -f kosh Espero que te este gustando el menú | lolcat
		date

		# Mensaje del Menú
		echo "----------------------------"
		echo -e "\e[1;93m    Trabajos parcial 2        \e[0m"
		echo "----------------------------"
		echo
		echo -e "1. \e[96mTarea #782 - Lecciones webminal\e[0m"
		echo -e "2. \e[96mRegresar [ menú principal ]\e[0m\n"
		read -p "Porfavor ingrese una opcion: " opc
		
		# Selección de opciones
		case "$opc" in 
			1)
				menutarea782
			;;
			2)
				bandera=1
			;;
			*) 
				echo -e "\n-->[\e[91m $opc \e[0m]<-- Opción inválida.\n"
				mensaje
			;;
		esac
	done 
}

# Menu de tareas del parcial 1
parcial3()
{
	bandera=0
	while [ "$bandera" -eq 0 ]
	do
		clear
		cowsay -f kosh ¿Enserio? a mi igual me gusta la pizza | lolcat
		date

		# Mensaje del Menú
		echo "----------------------------"
		echo -e "\e[1;93m    Trabajos parcial 3        \e[0m"
		echo "----------------------------"
		echo
		echo -e "1. \e[96mHackerrank.sh\e[0m"
		echo -e "2. \e[96mMenu.sh\e[0m"
		echo -e "3. \e[96mCIS-Ubuntu-Linux-LTS Benchmark\e[0m"
		echo -e "4. \e[96mRegresar [ menú principal ]\e[0m\n"
		read -p "Porfavor ingrese una opcion: " opc
		
		# Selección de opciones
		case "$opc" in 
			1)
				cat "Tareas 3er parcial"/hackerrank.sh | fzf --reverse
				clear
				echo
			    mensaje
			;;
			2)
				cat menu.sh | fzf --reverse
				clear
				echo
			    mensaje
			;;
			3)
				cat "Tareas 3er parcial"/CIS-Ubuntu-Linux-LTS-Benchmark.sh | fzf --reverse
				clear
				echo
			    mensaje
			;;
			4)
				bandera=1
			;;
			*) 
				echo -e "\n-->[\e[91m $opc \e[0m]<-- Opción inválida.\n"
				mensaje
			;;
		esac
	done 
}

menutarea995()
{
	bandera=0
	while [ "$bandera" -eq 0 ]
	do
		clear
		date

		# Mensaje del Menú
		echo "----------------------------"
		echo -e "\e[1;93m  Tarea #995 - Linux labs   \e[0m"
		echo "----------------------------"
		echo
		echo -e "1. \e[96mLinux-lab1.sh\e[0m"
		echo -e "2. \e[96mLinux-lab2.sh\e[0m"
		echo -e "3. \e[96mLinux-lab3.sh\e[0m"
		echo -e "4. \e[96mLinux-lab4.sh\e[0m"
		echo -e "5. \e[96mLinux-lab5.sh\e[0m"
		echo -e "6. \e[96mRegresar [ Trabajos parcial 1 ]\e[0m"
		echo -e "7. \e[96mRegresar [ menú principal ]\e[0m\n"
		read -p "Porfavor ingrese una opcion: " opc

		# Selección de opciones
		case "$opc" in 
			1)
				cat "Tareas 1er parcial"/"Tarea #995 - Linux labs"/linux-lab1.sh | fzf --reverse 
				clear
				echo
			    mensaje 
			;;
			2)
				cat "Tareas 1er parcial"/"Tarea #995 - Linux labs"/linux-lab2.sh | fzf --reverse
				clear
				echo
				mensaje
			;;
			3)
				cat "Tareas 1er parcial"/"Tarea #995 - Linux labs"/linux-lab3.sh | fzf --reverse
				clear
				echo
				mensaje
			;;
			4)
				cat "Tareas 1er parcial"/"Tarea #995 - Linux labs"/linux-lab4.sh | fzf --reverse
				clear
				echo
				mensaje
			;;
			5)
				cat "Tareas 1er parcial"/"Tarea #995 - Linux labs"/linux-lab5.sh | fzf --reverse
				clear
				echo 
				mensaje
			;;
			6)
				parcial1
			;;
			7)
				bandera=1
			;;
			*) 
				echo -e "\n-->[\e[1;91m $opc \e[0m]<-- Opción inválida!"
				echo
				mensaje
			;;
		esac
	done 
}

menutarea782()
{
	bandera=0
	while [ "$bandera" -eq 0 ]
	do
		clear
		date

		# Mensaje del Menú
		echo "-----------------------------------"
		echo -e "\e[1;93m  Tarea #782 - Lecciones webminal   \e[0m"
		echo "-----------------------------------"
		echo
		echo -e "1.  \e[96mLesson1.sh\e[0m"
		echo -e "2.  \e[96mLesson2.sh\e[0m"
		echo -e "3.  \e[96mLesson3.sh\e[0m"
		echo -e "4.  \e[96mLesson4.sh\e[0m"
		echo -e "5.  \e[96mLesson5.sh\e[0m"
		echo -e "6.  \e[96mLesson6.sh\e[0m"
		echo -e "7.  \e[96mLesson7.sh\e[0m"
		echo -e "8.  \e[96mLesson8.sh\e[0m"
		echo -e "9.  \e[96mLesson9.sh\e[0m"
		echo -e "10. \e[96mLesson10.sh\e[0m"
		echo -e "11. \e[96mLesson11.sh\e[0m"
		echo -e "12. \e[96mRegresar [ Trabajos parcial 2 ]\e[0m"
		echo -e "13. \e[96mRegresar [ menú principal ]\e[0m\n"
		read -p "Porfavor ingrese una opcion: " opc

		# Selección de opciones
		case "$opc" in 
			1)
				cat "Tareas 2do parcial"/"Tarea #782 - Lecciones webminal"/lesson1.sh | fzf --reverse 
				clear
				echo
			    mensaje 
			;;
			2)
				cat "Tareas 2do parcial"/"Tarea #782 - Lecciones webminal"/lesson2.sh | fzf --reverse 
				clear
				echo
			    mensaje
			;;
			3)
				cat "Tareas 2do parcial"/"Tarea #782 - Lecciones webminal"/lesson3.sh | fzf --reverse 
				clear
				echo
			    mensaje
			;;
			4)
				cat "Tareas 2do parcial"/"Tarea #782 - Lecciones webminal"/lesson4.sh | fzf --reverse 
				clear
				echo
			    mensaje
			;;
			5)
				cat "Tareas 2do parcial"/"Tarea #782 - Lecciones webminal"/lesson5.sh | fzf --reverse 
				clear
				echo
			    mensaje
			;;
			6)
				cat "Tareas 2do parcial"/"Tarea #782 - Lecciones webminal"/lesson6.sh | fzf --reverse 
				clear
				echo
			    mensaje
			;;
			7)
				cat "Tareas 2do parcial"/"Tarea #782 - Lecciones webminal"/lesson7.sh | fzf --reverse 
				clear
				echo
			    mensaje
			;;
			8)
				cat "Tareas 2do parcial"/"Tarea #782 - Lecciones webminal"/lesson8.sh | fzf --reverse 
				clear
				echo
			    mensaje
			;;
			9)
				cat "Tareas 2do parcial"/"Tarea #782 - Lecciones webminal"/lesson9.sh | fzf --reverse 
				clear
				echo
			    mensaje
			;;
			10)
				cat "Tareas 2do parcial"/"Tarea #782 - Lecciones webminal"/lesson10.sh | fzf --reverse 
				clear
				echo
			    mensaje
			;;
			11)
				cat "Tareas 2do parcial"/"Tarea #782 - Lecciones webminal"/lesson11.sh | fzf --reverse 
				clear
				echo
			    mensaje
			;;
			12)
				parcial2
			;;
			13)
				bandera=1
			;;
			*) 
				echo -e "\n-->[\e[1;91m $opc \e[0m]<-- Opción inválida!"
				echo
				mensaje
			;;
		esac
	done 
}

#------ Zona de variables ------#
# Pide la ubicación de lolcat, cowsay y fzf
lol=$( which lolcat )
cow=$( which cowsay )
fz=$( which fzf )

#------ Programa principal ------#
# Revisa si el programa esta instalado, si no está instalado se mandara un mensaje
# de instalación para hacer funcionar el script
if [ "$lol" ] && [ "$cow" ] && [ "$fz" ]
then

#Menú principal
while true
do
	clear
	# Muestra un mensaje interactivo al usuario
	cowsay Bienvenido $USER, seria bueno que observe el Menú... I ❤ POSIX | lolcat 
	
	# Muestra la fecha y hora del día
	date

	# Mensaje del Menú
	echo "----------------------------"
	echo -e "\e[1;93m           Menú             \e[0m"
	echo "----------------------------"
	echo
	echo -e "1. \e[96mTrabajos parcial 1\e[0m"
	echo -e "2. \e[96mTrabajos parcial 2\e[0m"
	echo -e "3. \e[96mTrabajos parcial 3\e[0m"
	echo -e "4. \e[96mSalir\e[0m\n"
	read -p "Porfavor ingrese una opcion: " opc

	# Selección de opciones
	case "$opc" in
		1) parcial1 ;;
		2) parcial2 ;;
		3) parcial3 ;;
		4) 
			# Sección de salida del programa imprimiendo un mensaje de despedida
			columnas=$( tput cols )
			filas=$( tput lines )

			message="Gracias por usar el menú"

			tamano_mensaje=${#message}
			medio_tamano_mensaje=$(( $tamano_mensaje / 2 ))
			mitad_filas=$(( $filas / 2 ))
			mitad_columnas=$(( ($columnas / 2) - $medio_tamano_mensaje ))
    
			tput clear
			tput cup $mitad_filas $mitad_columnas
			tput bold
			tput setaf 3
			echo "$message $USER!! :)"
			tput sgr0
			tput cup $( tput lines ) 0
			
			mensaje
			clear
			exit 0
		;;
		*) 
			echo
			echo -e "-->[\e[91m $opc \e[0m]<-- Opción inválida."
			echo
			mensaje
		;;
	esac
done
else
	# Imprime mensajes de instalación de los programas necesarios para hacer funcionar el script
	echo "-----------------------------------------------"
	echo -e "\e[1;93m                    Mensaje        \e[0m"     
	echo "-----------------------------------------------"
	echo "Se necesitan los siguientes programas:"
	echo "[*] Cowsay"
	echo "[*] Ruby"
	echo "[*] Lolcat"
	echo "[*] Fzf"
	sleep 1
	echo -e "Se instalarán los programas a continuación...\n" 
	mensaje
	
	# Instalacion de cowsay, ruby y lolcat
	sudo apt-get install cowsay ruby lolcat

	# Instalacion de fzf para mover el contenido de un manera interactiva
	sudo apt-get install fzf
	
	sleep 1.6
	echo -e "\n--------------------------------------------------------------"
	echo -e "\e[1;96mInstalación exítosa!\e[0m"
	echo -e "\e[1;96mPorfavor ejecute de nuevo el script [ menu.sh ]...\e[0m"
fi