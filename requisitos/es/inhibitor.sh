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
echo "                                ︻デ═一  Created by: XDeadHackerX v1.2  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con Inhibitor es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "                          ========================================================"
echo "                                                 Utilidades"
echo "                          ========================================================"
echo "                          [1] Estado Tarjeta de Red"
echo "                          [2] Escaner avanzado Redes Wifi"
echo "                          [3] Escanear dispositivos conectados a un Wifi Ajeno"
echo "                          ========================================================"
echo "                                             Ataques en Red/Lan"
echo "                          ========================================================"
echo "                          [4] Incomunicar a un Dispositivo/IP"
echo "                          [5] Relentizar el flujo de datos del Router"
echo "                          ========================================================"
echo "                                        Ataques a Redes Wifi Ajenos"
echo "                          ========================================================"
echo "                          [6] Desconectar a un disposito de una Red Wifi"
echo "                          [7] Desconectar a todos los dispositivos de una Red Wifi"
echo "                          [8] Desconectar a todas las Redes Wifi de un Canal"
echo "                                                -----------"
echo "                          [9] ==================""|""☢ Salir ☢""|""======================="
echo "                                                -----------"
echo
read -p " [*] Elige una opcion: " opc
	case $opc in
			1 )	bash requisitos/1.sh
				;;
			2 )	bash requisitos/2.sh
				;;
			3 )	bash requisitos/3.sh
				;;
			4 )	bash requisitos/4.sh
				;;
			5 )	bash requisitos/5.sh
				;;
			6 )	bash requisitos/6.sh
				;;
			7 )	bash requisitos/7.sh
				;;
			8 )	bash requisitos/8.sh
				;;
			9 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 3
				bash inhibitor.sh
	esac
                                                             
