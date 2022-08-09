
mkdir .config
cd .config
mkdir bspwm
mkdir sxhkd

# copy examples 
cp /usr/share/doc/bspwm/examples/bspwmrc bspwm/bspwmrc
cp /usr/share/doc/bspwm/examples/sxhkdrc sxhkd/sxhkdrc



# Update packages list
apt update

# Add base packages
sudo apt install unzip picom bspwm polybar sddm dunst qterminal thunar flameshot neofetch sxhkd git lxappearance xorg -y

# install Albert
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
curl -fsSL https://download.opensuse.org/repositories/home:manuelschneid3r/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_manuelschneid3r.gpg > /dev/null
sudo apt update
sudo apt install albert
