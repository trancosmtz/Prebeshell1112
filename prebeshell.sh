#Pantalla del login 
bash $PWD/login.sh
#Si sus datos son correctos se limpiara la pantalla
trap "" 2 20
trap "" SIGTSTP  # Ctrl+z y Ctrl+c
ruta_actual=$PWD 
MyShell()
{
clear

prompt="[\e[91m"$HOSTNAME"\e[0m]: \e[36m"$usuario"\e[0m {\e[92m"$PWD"\e[0m} > " 
comando=""
echo " ";
cat bienvenida.txt
  echo -e "\e[1;34mLista de comandos: ";
    echo "";
    echo "fecha";
    echo "hora";
    echo "infosystem";
    echo "limonero";
    echo "prebe-player";
    echo "buscar";
    echo "ayuda";
    echo "gato";
    echo "ahorcado";
    echo "creditos";
    echo "salir";
    echo "";
   

read -p "Dice: " comando


    case $comando in
        fecha) 
            cd comandos;
            ./fecha.sh
        ;;
	 hora) 
            cd comandos;
            ./hora.sh
        ;;
        
        infosystem) 
            cd comandos;
            ./infosis.sh
        ;;
        
       limonero) 
            cd comandos;
            ./limonero.sh
        ;;
        
        prebe-player) 
            cd PrebePlayer;
            ./prebeplayer.sh
        ;;
        
        buscar) 
            cd comandos;
            ./buscar.sh
        ;;
        
        ayuda) 
            cd comandos;
            ./ayuda.sh
        ;;
        
        gatito) 
            cd gato;
            ./gato.sh
        ;;
        
        ahorcado) 
            cd ahorcado;
            ./ahor.sh
        ;;
        
        creditos) 
            cd comandos;
            ./creditos.sh
        ;;
        
        salir) 
            exit
        ;;
        
        *) 
            $comando > /dev/null #salida.txt
            if [[ $? -ne 0 ]]; then 
                echo -e "\e[31m\t tu comando es troll, prueba con otro \e[0m"
                sleep 1
                #rm salida.txt
            else 
                $comando
                echo -e "\n\tpuchale enter para seguirle"
                echo -ne "\t >> "
                read enter
            fi
        ;;
    esac
    echo "";
}

exit_value=0
while [ $exit_value -ne 1 ]
do
    MyShell
done
