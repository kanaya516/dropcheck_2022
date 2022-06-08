#!/bin/bash -
myairport=$(networksetup -listallhardwareports | grep -1 Wi-Fi | sed -n 3p | awk '{print $2}')

if [ $(ifconfig $myairport | grep status | awk '{print $2}') = 'active' ]; then
   networksetup -setairportpower $myairport off
   echo $'\e[33mdisable Wi-Fi interface...\e[0m'
fi

open -a "Google Chrome" http://ipv4.google.com http://ipv6.google.com

sudo tmuxp load dropcheck_tmux.yml