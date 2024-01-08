#!/bin/bash

# Install necessary dependencies for building yay
sudo pacman -S --needed git base-devel

# Clone the yay repository
git clone https://aur.archlinux.org/yay.git

# Change directory to the cloned repository
cd yay

# Build the package
makepkg -si

# Clean up
cd ..
rm -rf yay

# Confirm installation
yay --version

# Generate a development package database for *-git packages that were installed without yay
yay -Y --gendb

# Check for development package updates
yay -Syu --devel

# Make development package updates permanently enabled
yay -Y --devel --save
