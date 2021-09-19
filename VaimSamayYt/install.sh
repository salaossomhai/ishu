#!/data/data/com.termux/files/usr/bin/bash
apt update && apt upgrade -y
termux-setup-storage 
pkg install python -y
echo -e "\e[034m"  "Installing youtube-dl\n"
pip install youtube-dl
echo -e "\e[032m"  "Making the Youtube Directory to download the Vidoes\n"
if [[ -d "~/storage/shared/Youtube" ]];
then
    echo " OK "
else
	mkdir ~/storage/shared/Youtube
fi

echo -e "\e[036m"  "Creating youtube-dl folder for config\n"
if [[ -d "~/.config/youtube-dl" ]];
then
    echo " OK "
else
	mkdir -p ~/.config/youtube-dl
fi

echo -e "Creating bin folder\n"
if [[ -d "~/bin" ]];
then
    echo " OK "
else
	mkdir ~/bin
fi

if [[ -f "~/bin/vaim" ]];
then
    echo " OK "
else
	cp -f vaim ~/bin/
fi

chmod +x ~/bin/vaim
