usuario=""
password=""
intentos=3

while [ $intentos -ne 0 ]; do
        clear
        echo -n -e "\e[96mNombre de usuario: \e[0m"
        read usuario
        echo -n -e "\e[96mContraseña: \e[0m"
        read -s password

        id -u $usuario > /dev/null;
        if[$? -ne 0]; then
                exit 1;
        export password
        ORIGPASS=`egrep -w "$usuario" /etc/shadow | cut -d: -f2`
        export ALGO=`echo $ORIGPASS | cut -d'$' -f2`
        export SALT=`echo $ORIGPASS | cut -d'$' -f3`
        GENPASS=$(perl -le 'print crypt("$ENV{PASSWD}","\$$ENV{ALGO}\$$ENV{SALT}\$
        if cat /etc/passwd | egrep -q $usuario 
        then 
        if ["$GENPASS" == "$ORIGPASS" ];
                then
        if [$? -ne $usuario | $? -ne $password]; then
                intento=$((intento-1))
                echo -e "No la puedes usar krnal, intentalo de nuevo"
                sleep 2
        else
                intento = 3
                break
        fi
done
if [ $intento -eq 0]; then 
        echo -e "\e[91mSe te acabaron los intentos :(\e[0m"
        exit 1
fi 
clear
