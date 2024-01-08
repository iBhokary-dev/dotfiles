#!/bin/bash

install_on_fedora() {
    sudo dnf install -y ansible
}

install_on_ubuntu() {
    sudo apt-get update
    sudo apt-get install -y ansible zsh git starship
}

install_on_arch() {
    sudo pacman -Syu --noconfirm ansible zsh git starship neovim openssh bat exa fzf github-cli neofetch zoxide ripgrep fd wget man-db tmux
}

install_on_mac() {
    brew install ansible zsh git starship
}

OS="$(uname -s)"
case "${OS}" in
    Linux*)
        if [ -f /etc/fedora-release ]; then
            install_on_fedora
        elif [ -f /etc/lsb-release ]; then
            install_on_ubuntu
        elif [ -f /etc/arch-release ]; then
            install_on_arch
        else
            echo "Unsupported Linux distribution"
            exit 1
        fi
        ;;
    Darwin*)
        install_on_mac
        ;;
    *)
        echo "Unsupported operating system: ${OS}"
        exit 1
        ;;
esac

ansible-playbook ~/.bootstrap/setup.yml --ask-become-pass

echo "Ansible installation complete."

