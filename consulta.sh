#!/bin/bash

sudo apt-get install lm-sensors

echo " " >> reporte.txt
date=$(date)
echo "Fecha y hora del evento: $date" >> reporte.txt
echo " " >> reporte.txt

touch reporte.txt

echo "##########Reportes de mi Servidor################" >> reporte.txt
name=$( hostname 2>&1 )
echo "$name" >> reporte.txt
type=$( uname -o 2>&1 )
echo "$type" >> reporte.txt

echo "##########ESTADO DE MI CPU#######################" >> reporte.txt
cpu=$( sensors 2>&1 )
echo "$cpu" >> reporte.txt

echo "##########Estado de mi Servidor MYSQL############" >> reporte.txt
mysql=$( /etc/init.d/mysql status 2>&1 )
echo "$mysql" >> reporte.txt

echo "##########ESTADO DE MI DISCO DURO################" >> reporte.txt
disk=$( df 2>&1)
echo "$disk" >> reporte.txt

echo "###############MIS SERVICIOS#####################" >> reporte.txt
services=$( service --status-all 2>&1 )
echo "$services" >> reporte.txt

echo "##################ESTADO DE MI RED###############" >> reporte.txt
ip=$( ip addr 2>&1 ) 
echo "$ip" >> reporte.txt

echo "################MI TEMPERATURA###################" >> reporte.txt
temp=$( sensors 2>&1 )
echo "$temp" >> reporte.txt

echo "###############USO DE MEMORIA RAM################" >> reporte.txt
memo=$( free -m -h 2>&1 )
echo "$memo" >> reporte.txt

echo "###############CAPACIDAD DE DISCOS###############" >> reporte.txt
capac=$( df -h 2>&1 )
echo "$capac" >> reporte.txt
