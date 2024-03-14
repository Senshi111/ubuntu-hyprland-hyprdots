#!/bin/bash

# Function to install packages
install_packages() {
    sudo apt-get install -y "$@"
}

# Add repositories and update system here if needed

# Install required packages
install_packages \
    build-essential \
    cmake \
    cmake-extras \
    curl \
    golang \
    gettext \
    git \
    gir1.2-graphene-1.0 \
    glslang-tools \
    gobject-introspection \
    hwdata \
    imagemagick \
    jq \
    libavcodec-dev \
    libavformat-dev \
    libavutil-dev \
    libcairo2-dev \
    libdeflate-dev \
    libdisplay-info-dev \
    libdrm-dev \
    libegl1-mesa-dev \
    libfontconfig-dev \
    libffi-dev \
    libgbm-dev \
    libgdk-pixbuf-2.0-dev \
    libgdk-pixbuf2.0-bin \
    libgirepository1.0-dev \
    libgl1-mesa-dev \
    libgraphene-1.0-0 \
    libgraphene-1.0-dev \
    libgulkan-0.15-0 \
    libgulkan-dev \
    libinput-bin \
    libinput-dev \
    libjbig-dev \
    libjpeg-dev \
    libjpeg62 \
    liblerc-dev \
    libliftoff-dev \
    liblzma-dev \
    libpam0g-dev \
    libpango1.0-dev \
    libpipewire-0.3-dev \
    libpixman-1-dev \
    libseat-dev \
    libswresample-dev \
    libsystemd-dev \
    libtiff-dev \
    libtiffxx6 \
    libudev-dev \
    libvulkan-dev \
    libvulkan-volk-dev \
    libvkfft-dev \
    libwayland-dev \
    libxcb-composite0-dev \
    libxcb-dri3-dev \
    libxcb-ewmh-dev \
    libxcb-icccm4-dev \
    libxcb-present-dev \
    libxcb-render-util0-dev \
    libxcb-res0-dev \
    libxcb-xinput-dev \
    libxcb-xkb-dev \
    libxkbcommon-dev \
    libxkbcommon-x11-dev \
    libxkbregistry-dev \
    libxml2-dev \
    libxxhash-dev \
    meson \
    ninja-build \
    psmisc \
    python3-mako \
    python3-markdown \
    python3-markupsafe \
    python3-yaml \
    qt6-base-dev \
    scdoc \
    seatd \
    spirv-tools \
    swaylock \
    waybar \
    wayland-protocols \
    wget \
    xdg-desktop-portal \
    xdg-desktop-portal-wlr \
    xwayland \
    parallel \
    liblz4-dev \
    qtwayland5 \
    libgtk-3-dev \
    libtomlplusplus-dev \
    
  
# Install dependencies for wlroots
sudo apt-get build-dep wlroots
export PATH=$PATH:/usr/local/go/bin
