Antes de ejecutar el archivo scanrun.sh ejecutar el archivo configscan.sh.

El archivo se tiene que ejecutar en modo sudo.

Ejecutar el siguiente comando 

chmod +x configscan.sh

Despues de haber ejecutar el comando procedecer con la instalación de las dependencias adicinales a NMAP.

NOTA: NMAP debe de estar instalado previamente.

./configscan.sh

Despues de la instalación procederemos a realizar el siguiente comando 

Chmod +x scanrun.sh

Antes de ejecutar el programa debemos de de ser super usuario.

sudo su 

(Ingresar contraseña de su sistema)

Posteriormente se  podrá ejecutar el script.

./scanrun.sh


El script contiene las siguiente opciones para realizar los escaneos.

1) Escaneo rapido (ruidoso)
2) Escaneo Normal
3) Escaneo sin ruido
4) Escaneo de servicios
5) Escaneo de vulnerabilidades en los puertos más comunes  (Encuentra las vulnerabilidades en los puertos más comunes que detecte que esten abiertos, el proceso es relativamente rapido, dependerá de los puertos que esten abiertos)
6) Escaneo de vulnerabilidades en todos los puertos   (Encuentra las vulnerabilidades en todos los puertos que detecte que esten abiertos, el proceso es tardado)


