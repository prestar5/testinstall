#!/bin/bash

echo "                                                                                              ";
echo "   __             _      __                                            __                 __  ";
echo "  / _)           | |     \ \                                           \ \               / _) ";
echo "  \ \   ___ ___ _| |_  _  \ \   ___ ____ _____ _ __  _  _  _ ______ ___ \ \   __  ___  __\ \  ";
echo " / _ \ / _ (   )     \| |  > \ / __)  ._|_____) '_ \| || || (  __  ) _ \ > \ /  \/ / |/ / _ \ ";
echo "( (_) | (_) ) ( (| |) ) | / ^ \> _| () )      | | | | \| |/ || || | |_) ) ^ ( ()  <| / ( (_) )";
echo " \___/ \___/ \_)_   _/ \_)_/ \_\___)__/       |_| | |\_   _/ |_||_|  __/_/ \_\__/\_\__/ \___/ ";
echo "                 | |                              | |  | |        | |                         ";
echo "                 |_|                              |_|  |_|        |_|                         ";
echo "";
echo "this script will automatically install the programs and move the configuration files to the";
echo "correct places. additionally, it will enable some services that will be needed via systemctl."
echo ""

# install paru, required for a lot of the programs i use
# install git
echo "please type your password to grant the script superuser permissions"
sudo echo "access granted! proceeding with installation..."
sudo pacman -Sy

echo "installing git..."
sudo pacman -S git --noconfirm

echo "installing paru..."
echo "do paru stuffs"

# under the assumption paru is not installed. should detect if paru is installed or not, idk.
# > todo: add a module which detects if paru or other aur helper is installed
# temporarily comment this out for test purposes!
# sleep 3
# sudo pacman -S --needed base-devel
# #git clone https://aur.archlinux.org/paru.git
# cd paru
# makepkg -si
# echo "installed paru! deleting paru dir..."
# cd ..
# rm -rf paru
# echo "deleted paru dir. installing requirements..."

# install packages via pacman and paru
pkg_pacman=("kitty zsh hyprland hyprpaper hyprlock rofi-wayland waybar sddm xdg-desktop-portal-hyprland nemo nemo-fileroller nemo-image-converter swaync pavucontrol fastfetch btop nwg-look mate-polkit ttf-terminus-nerd ttf-arimo-nerd wl-clipboard grim slurp brightnessctl playerctl noto-fonts-cjk noto-fonts-emoji qt5ct qt6ct papirus-icon-theme zoxide")
pkg_aur=("hyprpicker" "hyprshade" "hyprshot" "wl-screenrec" "clipse" "checkupdates-with-aur" "pokeget" "catppuccin-cursors-mocha" "auto-cpufreq" "ungoogled-chromium-bin" "vscodium-bin")

echo "installing required packages from arch repos..."
sudo pacman -S $pkg_pacman

echo "install aur shit idk"
sleep 3;

# echo systemctl shit
echo "sddm"
echo "other wankshit"
sleep 3;


# finish msg
echo "finished installing and configuring the system! you should probably restart the system or something idk"
