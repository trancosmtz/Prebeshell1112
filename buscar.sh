TUR='\033[0;36m'
NT='\033[0m'

AZ='\033[0;34m'
NA='\033[0m'

echo -e"${TUR}Dame el archivo a buscar${NV}"
read arch
echo -e"${TUR}En que directorio esta?${NV}"
read dir 

if ls $dir | egrep $arch
	then 
	echo "Aqui esta we: ls $arch | egrep $arch"
		else
	echo "No se bro disculpa"
fi
