#!/bin/bash

# Clone the repository if not already present
if [ ! -d "hyprcursor" ]; then
    git clone https://github.com/hyprwm/hyprcursor.git
fi

# Change directory to the repository
cd hyprcursor || exit 1

# Check if build tools are installed
if ! command -v cmake >/dev/null 2>&1; then
    echo "Error: CMake is required but not installed."
    echo "Please install CMake and try again."
    exit 1
fi

# Build the project
echo "Building the project..."
cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr -S . -B ./build
cmake --build ./build --config Release --target all -j"$(nproc 2>/dev/null || getconf NPROCESSORS_CONF)"

# Install the project
echo "Installing the project..."
sudo cmake --install ./build

echo "Installation completed successfully."

