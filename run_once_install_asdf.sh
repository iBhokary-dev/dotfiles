#!/bin/bash

# Install necessary dependencies for building asdf
sudo pacman -S --needed git base-devel

# Clone the asdf repository
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

# Install asdf using yay 
sudo pacman -S asdf-vm