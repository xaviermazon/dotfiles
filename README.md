
# Configuraciones

## Bash

- ~/.bashrc ->
	Configuración de bash sin el añadido de oh-my-bash 

--------------------------------------------------------------------------------

## Emacs

- ~/.emacs.d -> Carpeta contenedora de la configuración de emacs

--------------------------------------------------------------------------------

## Polybar

- ~/.config/polybar/launch.sh ->
	Script para ejecutar el launch.sh o de panels o cuts para que I3wm haga
	uso de ello.

### Panels

- ~/.config/polybar/panels/config.ini ->
	Configuración de la polybar en estilo panel de gnome
- ~/.config/polybar/panels/config.ini.backup ->
	Copia de seguridad de configuración de la polybar en estilo panel de gnome
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
    Configuración de modulos añadido
- ~/.config/polybar/cuts/scripts/color-switch.sh->
	Script que permite canbiar el color de las barras
- ~/.config/polybar/cuts/scripts/powermenu.sh ->
    Script para apagar, reiniciar o suspender la màqiona o bloquear o cerrar
	sessón
- ~/.config/polybar/cuts/temperature.sh ->
	Script que muestra la temperatura de la CPU (Requiere: sensor)

__NOTA:__ Pendiente de revisar los .ini para dar una mayor claridad y
	  eliminar modulos no usados

--------------------------------------------------------------------------------

## Rofi

- ~/.config/rofi/launchers/ribbon/launcher.sh ->
	Script para ejecutar el menu de aplicaiones estilo ribbon

--------------------------------------------------------------------------------