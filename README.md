
# Configuraciones

## Bash

- ~/.bashrc ->   
	Configuración de bash sin el añadido de oh-my-bash 

----------------------------------------------------------------------------

## Emacs

- ~/.emacs.d ->   
	Carpeta contenedora de la configuración de emacs
- ~/.emacs.d/init.el ->   
    Contiene la configuración de arranque del emacs
- ~/.emacs.d/init.org ->   
	Contiene información sobre el ficero de init.el
- ~/.emacs.d/ligature.el ->   
	Configura el emacs para que pueda trabajar con tipografias/fuentes que 
	tengan ligaduras.

----------------------------------------------------------------------------

## Polybar

- ~/.config/polybar/launch.sh ->   
	Script para ejecutar el launch.sh o de panels o cuts para que I3wm haga
	uso de ello.

### Panels

- ~/.config/polybar/panels/config.ini ->   
	Configuración de la polybar en estilo panel de gnome
- ~/.config/polybar/panels/config.ini.backup ->   
	Copia de seguridad de configuración de la polybar en estilo panel de
	gnome
- ~/.config/polybar/panels/launch.sh ->   
	Script para ejecutar 2 polybar

### Cuts

- ~/.config/polybar/cuts/launch.sh ->   
    Script para ejecutar 2 polybar con la estetica de cuts
- ~/.config/polybar/cuts/config.ini ->   
    Configuración de 2 barras en parte posterior e inferior
- ~/.config/polybar/cuts/bars.ini ->   
    Configuración de modulos sobre el estado de la máquina
- ~/.config/polybar/cuts/modules.ini ->   
	Configuración de modulos por defecto
- ~/.config/polybar/cuts/user_modules.ini ->   
    Configuración de modulos añadido por el usuario
- ~/.config/polybar/cuts/colors.ini ->   
    Configuración de estetica de las 2 barras
- ~/.config/polybar/cuts/bar_top.ini ->   
    Configuración de modulos usados para la barra de arriba
- ~/.config/polybar/cuts/bar_bottom.ini ->   
    Configuración de modulos usados para la barra de abajo
- ~/.config/polybar/cuts/scripts/color-switch.sh ->   
	Script que permite canbiar el color de las barras
- ~/.config/polybar/cuts/scripts/powermenu.sh ->   
    Script para apagar, reiniciar o suspender la màqiona o bloquear o cerrar
	sessón
- ~/.config/polybar/cuts/scripts/temperature.sh ->   
	Script que muestra la temperatura de la CPU (Requiere: sensor)
- ~/.config/polybar/cuts/scripts/ActiveWorkspace.sh ->   
    Script que muestra el espacios de trabajos disponibles y cual esta en 
	uso
- ~/.config/polybar/cuts/scripts/prevWorkspace.sh ->   
    Script que cambia el espacio de trabajo anterior, si es el primer 
	espacio se cambiará con el último espacio en uso
- ~/.config/polybar/cuts/scripts/nextWorkspace.sh ->   
    Script que cambia el espacio de trabajo posterior, si es el último 
	espacio se cambiará con el primer espacio en uso
- ~/.config/polybar/cuts/scripts/switchWorkspace.sh ->   
    Script que muestra y permite cambiar de ventanas, si implica cambiar de
	espacio de trabajo también cambiará.


__NOTA:__ Pendiente de revisar los .ini para dar una mayor claridad y
	  eliminar modulos no usados

----------------------------------------------------------------------------

## Rofi

- ~/.config/rofi/launchers/ribbon/launcher.sh ->   
	Script para ejecutar el menu de aplicaiones estilo ribbon

----------------------------------------------------------------------------

## i3-wm

- ~/.config/i3/config ->   
    Fichero de configuración de i3-wm
- ~/.config/i3/picom.conf ->   
    Fichero de condiguraciñon de picom, nos permite tener transparencias
