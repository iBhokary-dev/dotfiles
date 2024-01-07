# dotfiles

This repo contains the configuration to setup my machines. This is using [Chezmoi](
https://chezmoi.io), the dotfile manager to setup the install.

## Running 

```shell
export GITHUB_USERNAME=iBhokary-dev
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
