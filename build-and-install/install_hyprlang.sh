#!/bin/bash

# Define variables
REPO_URL="https://github.com/hyprwm/hyprlang.git"
BUILD_DIR="./build"

# Clone repository
git clone "$REPO_URL" || { echo "Error: Unable to clone repository."; exit 1; }

# Change to repository directory
cd hyprlang || { echo "Error: Repository directory not found."; exit 1; }

# Remove existing build directory if it exists
if [ -d "$BUILD_DIR" ]; then
    echo "Removing existing build directory..."
    rm -rf "$BUILD_DIR" || { echo "Error: Unable to remove build directory."; exit 1; }
fi

# Create build directory
mkdir -p "$BUILD_DIR" || { echo "Error: Unable to create build directory."; exit 1; }

# Configure and build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr -S . -B "$BUILD_DIR" \
    && cmake --build "$BUILD_DIR" --config Release --target hyprlang -j$(nproc 2>/dev/null || getconf _NPROCESSORS_ONLN) \
    && sudo cmake --install "$BUILD_DIR" || { echo "Error: Build failed."; exit 1; }

echo "Build successful. hyprlang installed."
exit 0
