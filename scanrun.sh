#!/bin/bash

borrar_color='\033[0m'
rojo='\033[1;31m'
cyan='\033[1;36m'

if [ $(id -u) -ne 0 ]; then
	echo -e "${rojo}Debes ser usuario root para ejecutar el script${borrar_color}"
exit

fi

test -f /usr/bin/nmap

if [ "$(echo $?)" == "0" ]; then
	clear
  read -p "Introduce la IP a escanear: " ip

	while true; do
  	echo -e "\n1) Escaneo rapido (ruidoso)"
	echo "2) Escaneo Normal"
	echo "3) Escaneo sin ruido"
	echo "4) Escaneo de servicios"
	echo "5) Escaneo de vulnerabilidades en los puertos más comunes"
	echo "6) Escaneo de vulnerabilidades en todos los puertos"
	echo "7) Salir"
	read -p "Seleccione una opción: " opcion 
	case $opcion in 

  1)
    clear && echo "Escaneando..." && nmap --open -p- --min-rate 5000 -T5 -sS -Pn -n -v $ip > escaneo_rapido_$ip.tx && echo -e "${cyan}Reporte guardado con el nombre de  escaneo_rapido_$ip.txt${borrar_color}"
    exit
    ;;
  2)
    clear && echo "Escaneando..." && nmap --open -p- $ip > escaneo_normal_$ip.txt && echo -e "${cyan}Reporte guardado con el nombre de  escaneo_normal_$ip.txt${borrar_color}"
    exit
    ;;
  3)
    clear && echo  "Escaneando..." && nmap -p- -T2 -sS -Pn -f $ip > escaneo__sin_ruido_$ip.txt && echo -e "${cyan}Reporte guardado con el nombre de  escaneo__sin_ruido_$ip.txt${borrar_color}"
    exit
    ;;
  4)
    clear && echo "Escaneando..." && nmap -sV -sC $ip > escaneo_servicios_$ip.txt && echo -e "${cyan}Reporte guardado con el nombre de  escaneo_servicios_$ip.txt${borrar_color}"
    exit
    ;;
  5)
    clear && echo "Escaneando..." && nmap --script vuln -sV $ip > escaneo_vulnerabilidades_puertos_comunes_$ip.txt && echo -e "${cyan}Reporte guardado con el nombre de  escaneo_rapido_vulnerabilidades_puertos_comunes_$ip.txt${borrar_color}"
    exit
    ;;
  6)
    clear && echo "Escaneando..." && nmap --script vuln -sV -p- $ip > escaneo_vulnerabilidades_todos_los_puertos_$ip.txt && echo -e "${cyan}Reporte guardado con el nombre de  escaneo_vulnerabilidades_todos_los_puertos_$ip.txt${borrar_color}"
    exit
    ;;
  7)
    break
    ;;
 *)
   echo -e " El dato porpocionado es incorrecto, vuelve a  introducir la opción"
   ;;
    esac
done

else
   echo -e "\n[!] No tienes intalado nmap, se procederá con la intalación" && apt update >/dev/null && apt install nmap -y > /dev/null && echo -e "\nNmap instalado correctamente"
fi






