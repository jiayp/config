########################################                                                                         
## Purpose : Configuration for startx ## 
## File    : $HOME/.xinitrc           ##
## Date    : Sep-01-2006              ##
## Author  : IOU                      ##
########################################

export LANG=zh_CN.UTF-8
export LC_CTYPE=zh_CN.UTF-8
export XMODIFIERS=@im=ibus
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
ibus-daemon -d -x -r
xrdb .Xresources
urxvtd & 
emacs --daemon
exec dwm

##############################
## Kill processes by name   ## 
## before quitting X-window ##
##############################
killall xinit
killall emacs
