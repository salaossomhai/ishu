clear
echo ""
echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------  \e[1;91m\e[0m'
echo -e $'\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;91m  !!         DOWNLOAD REQUIREMENTS         !!\e[0m'
echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m'
echo ""

printf "Installing dependencies ..."
sleep 2
printf "installing package: php"
apt-get install php -y
printf "installing pacakge: python3"
apt-get install python3 python3-pip -y

if [[ -f "ngrok-stable-linux-amd64.zip" ]]; then
	rm ngrok
	unzip ngrok-stable-linux-amd64.zip
	rm -rf ngrok-stable-linux-amd64.zip
	
else
	rm ngrok
	wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip --no-check-certificate
	unzip ngrok-stable-linux-amd64.zip
	rm -rf ngrok-stable-linux-amd64.zip

fi

clear
echo ""
sleep 2
clear
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;96m\e[0m\e[1;92m  ---------------------------------   \e[1;91m\e[0m'
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;90m\e[0m\e[1;92m !!    Installation Successfull   !!  \e[1;91m\e[0m'
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;96m\e[0m\e[1;92m  ---------------------------------   \e[1;91m\e[0m'
sleep 4
clear
printf "Successfully Installed !!!"
clear
bash samay.sh 

