#!/bin/bash

trap "" 2 20
trap "" SIGTSTP

array=( "" "" "" "" "" "" "" "" "" "")
condiciones () {
	if [ $v == "${array[7]}" ] && [ $v == "${array[8]}" ] && [ $v == "${array[9]}" ]; then
		ganaste
	elif [ $v == "${array[4]}" ] && [ $v == "${array[5]}" ] && [ $v == "${array[6]}" ]; then
		ganaste
	elif [ $v == "${array[1]}" ] && [ $v == "${array[2]}" ] && [ $v == "${array[3]}" ]; then
		ganaste
	elif [ $v == "${array[7]}" ] && [ $v == "${array[4]}" ] && [ $v == "${array[1]}" ]; then
		ganaste
	elif [ $v == "${array[8]}" ] && [ $v == "${array[5]}" ] && [ $v == "${array[2]}" ]; then
		ganaste
	elif [ $v == "${array[9]}" ] && [ $v == "${array[6]}" ] && [ $v == "${array[3]}" ]; then
		ganaste
	elif [ $v == "${array[7]}" ] && [ $v == "${array[5]}" ] && [ $v == "${array[3]}" ]; then
		ganaste
	elif [ $v == "${array[1]}" ] && [ $v == "${array[5]}" ] && [ $v == "${array[9]}" ]; then
		ganaste
	fi
}

tablero () {
   clear
   echo -e "\t-------------------------"
   echo -e "\t|\t${array[7]:-7} | ${array[8]:-8} | ${array[9]:-9}\t|"
   echo -e "\t|\t_________\t|"
   echo -e "\t|\t${array[4]:-4} | ${array[5]:-5} | ${array[6]:-6}\t|"
   echo -e "\t|\t_________\t|"
   echo -e "\t|\t${array[1]:-1} | ${array[2]:-2} | ${array[3]:-3}\t|"
   echo -e "\t-------------------------\n"
  }



ganaste () {
	clear
  echo -e "\n$USER_NO\n"
	cat ganador.txt				
  clear
  cd ..
  cd comandos
  ./regresar.sh
  exit 0
}

empate () {                                      
  for k in `seq 0 $( expr ${#array[@]} - 1) `
    do
     if [ ! -z ${array[$k]} ] ; then
      tic_array[$k]=$k
       if [ "9"  -eq ${#tic_array[@]} ] ; then
         clear
        cat empate.txt
        sleep 2
        cd ..
        cd comandos
        ./regresar.sh
        exit 0
       fi
     fi
   done
}

jugadores () {
	clear
	read -p "cual es tu nombre?: " jugador1
	echo -e "\n$jugador1 te tocan las  X \n"

	read -p "el nombre del otro jugador es? " jugador2
	echo -e "\n$jugador2 te tocan los O"
}

EMPTY_CELL () {
   echo -e -n "${DEFAULT_COL}"
   read -e -p "$MSG" col
   case "$col" in
    [0-9]) if [  -z ${array[$col]}   ]; then
    CELL_IS=empty
   else
    CELL_IS=notempty
   fi;;
     *)  DEFAULT_COL=$COLOR_RED
     MSG="$USER_NO no la rieges, esoge bien el numero "
     EMPTY_CELL;;
   esac
   echo -e -n "${COLOR_BLACK}"
  }


  CHOISE () {
   EMPTY_CELL
   if [ "$CELL_IS" == "empty" ]; then
    array[$col]="$v"
   else
    MSG="llena la caja  $USER_NO : "
    CHOISE
   fi
  }

  #main
  clear
  cat inicio.txt
  echo -e "\nsolo dos pros pueden jugar\n"
 
  read -n 1 -p "puchale s de starp para entrar o n de nel para salir" s

  if [ "$s" == "s" ] || [ "$s" == "S" ]; then
  	clear
  	jugadores
  	sleep 2
  else
    clear
    cd ..
    cd comandos
    ./regresar.sh
    exit 0
  fi
    tablero
    ((i++))
    while :
    do
    ((i++))
    jug=`expr $i % 2`
    if  [ "$jug" == "0" ]; then
     USER_NO=$jugador1
     MSG="$USER_NO Introduce tu elección : "
     v="X"
     CHOISE
    else
     USER_NO=$jugador2
     MSG="$USER_NO Introduce tu elección : "
     v="O"
     CHOISE
   fi

    tablero
    condiciones
    empate
  done
  #cd comandos
  #./regresar.sh
exit 0
