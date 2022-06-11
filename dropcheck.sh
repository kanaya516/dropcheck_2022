#!/bin/bash -
myairport=$(networksetup -listallhardwareports | grep -1 Wi-Fi | sed -n 3p | awk '{print $2}')

if [ $(ifconfig $myairport | grep status | awk '{print $2}') = 'active' ]; then
   networksetup -setairportpower $myairport off
   echo $'\e[33mdisable Wi-Fi interface...\e[0m'
fi


sudo tmuxp load dropcheck_tmux.yml
open -na "Google Chrome" --args --incognito http://ipv4.google.com http://ipv6.google.com
curl http://www.eicar.org/download/eicar_com.zip