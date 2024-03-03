#!/bin/bash

# Clone tomlplusplus repository
git clone https://github.com/marzer/tomlplusplus.git

# Navigate into the cloned directory
cd tomlplusplus || { echo "Error: Failed to navigate into the cloned directory"; exit 1; }

# Create a build directory
mkdir build

# Navigate into the build directory
cd build || { echo "Error: Failed to navigate into the build directory"; exit 1; }

# Run CMake to configure the build
cmake ..

# Build and install tomlplusplus
sudo make install

echo "tomlplusplus installation completed successfully."
