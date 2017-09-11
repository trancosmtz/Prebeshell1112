AZ='\033[0;34m'
NA='\033[0m'


 memoriaLibre=`cat /proc/meminfo | grep "MemTotal"`
 memoriaTotal=`cat /proc/meminfo | grep "MemFree"`
 VSO=`cat /proc/version`
 SO=`cat /proc/sys/kernel/ostype`
 Cache=`cat /proc/cpuinfo | grep "cache"`
 Procesador=$(grep -m 1 "model name" /proc/cpuinfo | cut -c14-)
echo -e "{TUR}--------Información del sistema--------{NT}"
echo -e "{TUR}<><><>Modelo de computadora<><><>{NT}"
echo -e "{AZ}`cat /proc/cpuinfo` {NA}"
echo -e "{TUR}<><><>Memoria<><><>{NT}" 
echo -e "{AZ}$Memoria libre: $memoriaLibre{NA}"
echo -e "{AZ}$Memoria total: $memoriaTotal{NA}"
echo -e "{TUR}<><><>Sistema Operativo<><><>{NT}" 
echo -e "{AZ} $SO {NA}"
echo -e "{TUR}<><><>Version de Sistema Operativo<><><>{NT}" 
echo -e "{AZ} $VSO{NA}"
echo -e "{TUR}<><><>Cache<><><>{NT}" 
echo -e "{AZ} $Cache {NA}"
echo -e "{TUR}<><><>Procesador<><><>{NT}" 
echo -e "{AZ} $Procesador {NA}"
