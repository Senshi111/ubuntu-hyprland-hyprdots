#!/bin/bash

# Clone the repository
git clone --recursive https://github.com/hyprwm/xdg-desktop-portal-hyprland || { echo "Error: Failed to clone repository"; exit 1; }

# Navigate into the cloned directory
cd xdg-desktop-portal-hyprland/ || { echo "Error: Failed to navigate into the cloned directory"; exit 1; }

# Configure the build
cmake -DCMAKE_INSTALL_LIBEXECDIR=/usr/lib -DCMAKE_INSTALL_PREFIX=/usr -B build || { echo "Error: Failed to configure the build"; exit 1; }

# Build the project
cmake --build build || { echo "Error: Failed to build the project"; exit 1; }

# Install the project
sudo cmake --install build || { echo "Error: Failed to install the project"; exit 1; }

echo "Installation completed successfully."
cd ..
