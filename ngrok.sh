#!/bin/bash


#Colors
grn='\e[0;32m'
red='\e[1;31m'
yellow='\e[1;33m'
RedF="${Escape}[31m"
LighGreenF="${Escape}[92m"
blue='\e[1;34m'



# Check root
[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { echo  $red "You must be root to run the script"; echo ; exit 1; }
clear


clear
printf "${S7}███╗░░██╗░██████╗░██████╗░░█████╗░██╗░░██╗${S0}\n"; wait
printf "${S3}████╗░██║██╔════╝░██╔══██╗██╔══██╗██║░██╔╝${S0}\n"; wait
printf "${S3}██╔██╗██║██║░░██╗░██████╔╝██║░░██║█████═╝░${S0}\n"; wait
printf "${S2}██║╚████║██║░░╚██╗██╔══██╗██║░░██║██╔═██╗░${S0}\n"; wait
printf "${S6}██║░╚███║╚██████╔╝██║░░██║╚█████╔╝██║░╚██╗${S0}\n"; wait
printf "${S1}╚═╝░░╚══╝░╚═════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝${B5}${S2} INSTALLER ${S0}${B0}${S0}\n"; wait
echo; wait    
echo 
echo 
echo -e $green"    ""╔--───────────────────────────────────────────--─╗"; sleep 0.5
echo -e $green"    ""|              <Made by Moemen_N7>               |"; sleep 0.5
echo -e $green"    ""|         https://github.com/Moemen-N7/          |"; sleep 0.5
echo -e $green"    ""┖--───────────────────────────────────────────--─┙"; sleep 0.5
echo -e $yellow"               ""Thanks For Using My tool  :)"; sleep 0.5

echo -e $grn"================================================"; sleep 0.2
read -p "enter your token :- " token
echo -e $grn"================================================"; sleep 0.2



apt install wget
apt install tar
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -xvzf  ngrok-v3-stable-linux-amd64.tgz
mv ngrok /usr/bin/ngrok
chmod +x /usr/bin/ngrok
rm ngrok-stable-linux-arm.zip
ngrok authtoken $token
ngrok http 80
