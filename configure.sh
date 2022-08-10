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

echo "Clonando los repositorios que contienen las configuraciones"

git clone --recursive https://github.com/xaviermazon/polybar.git vendor/polybar      	
git clone --recursive https://github.com/xaviermazon/MyConfigEmacs.git vendor/emacs.d
git clone --recursive https://github.com/xaviermazon/rofi.git vendor/rofi            
git clone --recursive https://github.com/xaviermazon/i3.git vendor/i3
git clone https://github.com/cormullion/juliamono.git vendor/juliamono

echo "Vamos a establecer las configuraciones requeridas"

cd ~/dotfiles/vendor/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip

[ ! -d "~/.config" ] && mkdir ~/.config
[ ! -d "~/.local/share/fonts" ] && mkdir --parents ~/.local/share/fonts

mv polybar ~/.config/
mv emacs.d ~/.emacs.d
mv rofi ~/.config/
mv i3 ~/.config/
cp juliamono/*.tt ~/.local/share/fonts
mkdir ~/.local/share/fonts/Iosevka
unzip Iosevka.zip -d  ~/.local/share/fonts/Iosevka
fc-cache -f -v

echo "Ya esta todo instalado y configurado, para un poco mas de informacion usa --info-shortcuts"
