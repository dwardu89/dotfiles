#! /bin/zsh
BASEDIR=$(dirname "$0/")
sh "${BASEDIR}/scripts/install_docker.sh"
sh "${BASEDIR}/scripts/install_iterm2.sh"
sh "${BASEDIR}/scripts/install_oh_my_zsh.sh"
sh "${BASEDIR}/scripts/install_terraform.sh"
sh "${BASEDIR}/scripts/install_packer.sh"
