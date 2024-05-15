#!/bin/bash


git clone https://github.com/scipag/vulscan scipag_vulscan
ln -s `pwd`/scipag_vulscan /usr/share/nmap/scripts/vulscan

# Punto 3: Clonar el repositorio nmap-vulners
cd /usr/share/nmap/scripts/vulscan
git clone https://github.com/vulnersCom/nmap-vulners.git
