#!/bin/bash

# Autor: Xavier Mazon
# Data: 30-07-2022


# comprobar si es usuario o root
# usuario - Comprueba que los programas requeridos esten instalados, si estan instalados restura la configuración de manera forzosa
# root - Fuerza la restauracion el i3wm con las configuraciones, acutaliza e instala paquetes necesarios
#
# parameters:
#	--check comprueba si estan instalados los paquetes requeridos
#	--help muestra la ayuda del script
#
# nivel de error $?



echo "Actualizando el sistema operativo"
apt update && apt upgrade -y
ERRORLEVEL=$?
if [ $ERRORLEVEL != 0 ]; then
	echo "ERROR: comando apt update && apt upgrade -y usa echo $? para ver el error"
	exit $ERRORLEVEL
fi
echo "Actualizado el sistema operativo"

echo "Comprovando los paquetes requeridos"
for PKG in $(cat required-pkg)
do
	STATUS=$(dpkg-query -s $PKG | head -2 | tail -1 | cut -d' ' -f4)
	ERRORLEVEL=$?
	if [[ ($STATUS != "installed") || ($ERRORLEVEL != 0) ]]; then
		apt-get install -qq $PKG > /dev/null
		ERRORLEVEL=$?
		if [ $ERRORLEVEL != 0 ]; then
			echo "ERROR: comando apt install -y usa echo $? para ver el error"
			exit $ERRORLEVEL
		fi
	fi
done
echo "Los paquetes requeridos ya estan instalados en el sistema operativo"

echo "Descargando rofi"
git clone https://github.com/davatorium/rofi.git
cd rofi
git checkout 1.7.3
echo "Compilando rofi"
meson setup build
ninja -C build -j $(nproc)
echo "Instalando rofi"
ninja -C build install -j $(nproc)
echo "Rofi esta instalado"
cd ~

echo "Descargando polybar"
git clone --recursive https://github.com/polybar/polybar.git
cd polybar
git checkout 3.6.3
mkdir build
cd build
echo "Compilando polybar"
cmake ..
make -j$(nproc)
echo "Instalando polybar"
sudo make install -j $(nproc)
echo "Polybar esta instalado"
cd ~

echo "Ya esta todo instalado y configurado, para un poco mas de informacion usa --info-shortcuts"