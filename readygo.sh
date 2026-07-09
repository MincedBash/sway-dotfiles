#!/usr/bin/env bash
if [[ "$USER" == root ]]; then
	echo "Don't run me as root"
	exit
fi

echo "Upgrading and Installing required packages"
sudo pacman -Syu $(cat pkgs.txt)
echo -e "\n\nCopying to .config"
sleep 0.5
cp -rv kitty nvim sway waybar rofi ~/.config/
cp -v swaylock ~/.swaylock

sudo cp -rv SilentSDDM /usr/share/sddm/themes/silentbeef
sudo cp -rv wallpaps /usr/share/backgrounds/beef
echo -e "\n\nProcess Complete, enjoy my theme."
sleep 2s && exit
