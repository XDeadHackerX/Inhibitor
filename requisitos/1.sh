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
echo "[1] Estado Tarjeta de Red"
echo 
echo "=============================================================================="
echo "                              Tarjeta de Red"
echo "=============================================================================="
sudo airmon-ng
echo "------------------------------------------------------------------------------"
sudo iwconfig
echo "=============================================================================="
sleep 1
echo
echo
echo "#####################"
echo "[1] Volver al Menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc2
	case $opc2 in
			1 )	bash inhibitor.sh
				;;
			2 )	bash requisitos/1.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
