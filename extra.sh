#!/bin/bash

# Install Yay
echo "Installing Yay..."
sudo pacman -Syu --noconfirm
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

# Install Nerdfonts
echo "Installing Nerdfonts..."
yay -S getnf --noconfirm

# Install Mise
echo "Installing Mise..."
curl https://mise.run | sh

# Install Fzf, Ripgrep, and Bat
echo "Installing Fzf, Ripgrep, and Bat..."
yay -S fd fzf ripgrep bat neofetch jq xclip gpaste zoxide --noconfirm

# Install Git
echo "Installing Git..."
yay -S github-cli git-delta lazygit --noconfirm

# Install Firefox
echo "Installing Firefox..."
yay -S firefox --noconfirm

# Install rofi theme
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
sh setup.sh
cd ..
rm -rf rofi

echo "Installation complete. Please reboot the system to apply the changes."
