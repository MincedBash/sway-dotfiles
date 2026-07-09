#!/usr/bin/env bash
if [[ "$USER" == root ]]; then
	echo "Don't run me as root"
	exit
fi

echo "Upgrading and Installing required packages"
sudo pacman -Syu $(cat pkgs.txt)
sudo -k
echo -e "\n\nCopying to .config"
sleep 0.5
cp -rv kitty nvim sway waybar ~/.config/
cp -rv swaylock ~/.swaylock

sudo cp -rv SilentSDDM /usr/share/sddm/themes/silentbeef
sudo -k
sudo cp -rv wallpaps /usr/share/background/beef
sudo -k
echo -e "\n\nProcess Complete, enjoy my theme."
sudo -k
sleep 2s && exit
