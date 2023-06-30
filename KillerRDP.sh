#!/bin/bash

# Download chrome-remote-desktop package
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
wget -O microsoft-edge-stable_114.0.1823.58-1_amd64.deb "https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_114.0.1823.58-1_amd64.deb?brand=M102"

# Install dependencies
sudo apt-get update
sudo apt-get install -y xvfb xserver-xorg-video-dummy xbase-clients python3-psutil libcairo2 libgbm1 libgtk-3-0 libpango-1.0-0 libxdamage1 libxfixes3 libxkbcommon0 libxrandr2 libxtst6

# Install the required dependencies
sudo apt-get install -y fonts-liberation libu2f-udev xdg-utils

# Install chrome-remote-desktop
sudo dpkg -i chrome-remote-desktop_current_amd64.deb

# Install any missing dependencies
sudo apt-get -f install

sudo apt install --assume-yes xfce4 desktop-base xfce4-terminal

# Add a new user
sudo useradd -m test

# Set the password for the new user
echo 'test:123456' | sudo chpasswd

# Add the user to the sudoers file
echo 'test ALL=(ALL:ALL) ALL' | sudo tee -a /etc/sudoers


