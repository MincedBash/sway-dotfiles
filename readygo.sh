#!/usr/bin/env bash
if [[ "$USER" == root ]]; then
	echo "Don't run me as root, I will throw a request when I need permission"
	exit
fi

echo "Upgrading and Installing required packages"
sudo pacman -Syu $(cat pkgs.txt)

echo -e "\n\nCopying to .config"
sleep 0.5
mv -v kitty nvim sway waybar ~/.config/
mv -v swaylock ~/.swaylock

sudo mv -v SilentSDDM /usr/share/sddm/themes/SilentSDDM
sudo mv -v wallpaps /usr/share/background/beef
echo -e "\n\nProcess Complete, enjoy my theme."
sleep 2s && exit
