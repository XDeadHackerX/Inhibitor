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
echo "               Any action and or activity related to Inhibitor is solely your responsibility"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "[*] Elige idioma / Select language"
echo
echo "#####################"
echo "[1] Spain/es"
echo "[2] English/en"
echo "[3] Exit"
echo "#####################"
echo
echo
read -p "[*] Elige una opcion / Choose one option: " opc
	case $opc in
			1 )	echo
				cp requisitos/es/inhibitor.sh .
				;;
			2 )	echo
				cp requisitos/en/inhibitor.sh .
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida / It is not a valid option"
				sleep 3
				bash installer.sh
	esac
	
sudo apt install hping3	-y
sudo apt install aircrack-ng -y
sudo apt-get install mdk4 -y
sudo apt-get install gnome-terminal -y
sudo apt-get install bettercap -y
sudo apt-get install -y netdiscover-y
chmod 777 inhibitor.sh -y
bash inhibitor.sh
