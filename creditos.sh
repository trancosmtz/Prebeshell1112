#!/bin/bash
trap "" 2 20
trap "" SIGTSTP

creditos()
{

    echo "";
    echo -e "Este proyecto se elaboró con mucho esfuerzo";
    echo "";
    echo -e "    por los participantes:";
    echo -e "     -Martínez González José Alfredo";
    echo -e "     -Herrera Gandarela Gabriel Alejandro ";
    echo -e "     cullos números de prebecarios son, 11 y 12 respectivamente";       
    echo "       ";
    
 }
clear
creditos
sh ./regresar.sh
