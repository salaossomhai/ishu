#!/data/data/com.termux/files/usr/bin/bash
banner(){

printf "\n"
printf "                     ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄      \n"
printf "  ██  ██           ▄█      ████  ████████     \n"
printf "  ██▄▄██           ████  ██████  █████████    \n"
printf "  ▀████▀ ████ █  █ ████  █ ██ █ ▄▄ █  ▄▄██    \n"
printf "    ██   █  █ █▄▄█ ████  █    █ ▀▀ █  ▄▄██    \n"
printf "    ██   ████ ████ ▀███▄▄█▄▄▄▄█▄▄▄▄█▄▄▄▄█▀    \n"
printf "   				     ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀      \n"
printf "\n"

}

download(){
	clear
	banner
	echo ""
	echo -e "\e[96m[ ! ]\e[91m Put Link To Download \e[96m===➤ \e[93m"
	echo ""
	read -p $'\e[1;40m\e[96m Give me Link ?\e[1;91m : \e[0m' download
	echo ""
	/data/data/com.termux/files/home/bin/./vaim ${download}
}

menu(){
clear
banner
echo ""
echo -e "\e[96m[ ! ]\e[91m Want To Open Youtube \e[96m===➤ \e[93m"
echo ""
read -p $'\e[1;40m\e[96m DO YOU WANT TO OPEN YOUTUBE ?\e[1;91m [ Y/N ] : \e[0m' option
echo ""
if [[ $option == *'Y'* ]] || [[ $option == *'y'* ]];
then
	am start -a android.intent.action.VIEW -d https://www.youtube.com/ > /dev/null 2>&1 &
	download

else
	download

fi



}

clear
menu