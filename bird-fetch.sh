#! /bin/bash
. /etc/os-release

void="\e[0m"
red="\e[31m"
yellow="\e[33m"
blue="\e[34m"

if grep -q dwm ~/.xinitrc; then
    wm="dwm"
elif grep -q bspwm ~/.xinitrc; then
    wm="bspwm"
elif grep -q qtile ~/.xinitrc; then
    wm="qtile"
elif grep -q xmonad ~/.xinitrc; then
    wm="xmonad"
elif grep -q i3 ~/.xinitrc; then
    wm="i3"
elif grep -q openbox ~/.xinitrc; then
    wm="openbox"
else
    wm="some wm"
fi

echo -e "${blue}   __     ${red}$(cat /proc/sys/kernel/hostname)@${USER}${void}" 
echo -e "${blue}  |××|    ${yellow}  ${void}~ ${NAME}"
echo -e "${blue} ( \/ )   ${yellow}  ${void}~ $(cat /proc/sys/kernel/osrelease)"
echo -e "${blue}  |––|    ${yellow}  ${void}~ ${SHELL##*/}"
echo -e "${blue}  ^  ^    ${yellow}  ${void}~ ${wm}"
