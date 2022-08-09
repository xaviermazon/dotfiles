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

echo "Vamos a establecer las configuraciones requeridas"
cd ~/dotfiles/vendor/
ls
mkdir ~/.config
mv polybar ~/.config/
mv emacs.d ~/.emacs.d
mv rofi ~/.config/
mv i3 ~/.config/

echo "Ya esta todo instalado y configurado, para un poco mas de informacion usa --info-shortcuts"
