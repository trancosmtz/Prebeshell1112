#!/bin/bash

trap "" 5 31
trap "" SIGTSTP  # Ctrl+z y Ctrl+c

cal > .calendario
h=$(date "+%H")
min=$(date "+%M")
seg=$(date "+%S")


calendario()
{
    echo "";
    
    echo "$h ":" $min ":" $seg";
}

   
clear
calendario
sh ./regresar.sh
