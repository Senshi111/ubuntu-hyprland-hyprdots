#!/bin/bash

# Install Rust nightly
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain nightly

# Add Rust to the PATH (if not already added)
source $HOME/.cargo/env

# Print Rust version to confirm installation
rustc --version

echo "Rust nightly installation completed successfully."
