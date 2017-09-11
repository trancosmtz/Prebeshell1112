#!/bin/bash

trap "" 5 31
trap "" SIGTSTP  # Ctrl+z y Ctrl+c

cal > .calendario

hoy=$(date "+%A %d")
mesHoy=$(date "+%B")
anioHoy=$(date "+%Y")
dia=$(date "+%d")
mes=$(date "+%m")
anio=$(date "+%y")

calendario()
{
    echo "";
    echo "         hoy es $hoy "de"  $mesHoy "del" $anioHoy";
echo "   ";
  
}

   
clear
calendario
sh ./regresar.sh
