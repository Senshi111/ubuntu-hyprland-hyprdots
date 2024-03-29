#!/bin/bash

sudo apt install apt-transport-https wget curl gpg software-properties-common ca-certificates gnupg2 -y

# Add the Papirus PPA repository
sudo add-apt-repository -y ppa:papirus/papirus

#vscode
wget -O- https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | sudo tee /etc/apt/sources.list.d/vscode.list

sudo apt update
# Function to install packages
install_packages() {
    sudo apt install -y "$@"
}

# Add repositories and update the system here if needed

# Install required packages
install_packages \
    pipewire \
    pipewire-alsa \
    pipewire-audio \
    pipewire-jack \
    pipewire-pulse \
    wireplumber \
    network-manager \
    network-manager-gnome \
    bluez \
    blueman \
    brightnessctl \
    qt6-wayland \
    dunst \
    rofi \
    swayidle \
    wlogout \
    grim \
    slurp \
    polkit-kde-agent-1 \
    xdg-desktop-portal-gtk \
    imagemagick \
    pavucontrol \
    pamixer \
    qt5-style-kvantum \
    qt6-style-kvantum \
    qt5ct \
    qt6ct \
    kitty \
    neofetch \
    dolphin \
    vim \
    ark \
    zsh \
    eza \
    qt5-image-formats-plugins \
    qt6-base-dev \
    libpipewire-0.3-dev \
    libinih-dev \
    ffmpegthumbs \
    sddm \
    code
