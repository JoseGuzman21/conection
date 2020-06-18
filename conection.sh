#!/bin/bash

if [ -f /home/joseguzman/reportes/reporte.txt ];
then
echo "Si, si existe"
tail -n+1 /home/joseguzman/reportes/reporte.txt >> /home/joseguzman/reportes/history_reports.txt
else
echo "No, no existe"
fi
touch hola.txt
