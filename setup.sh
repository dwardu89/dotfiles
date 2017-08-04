#! /bin/zsh
BASEDIR=$(dirname "$0/")

#download the dofiles from github

# source all shell scripts
for shell_script in '/tmp/dotfiles-master/scripts/'*.sh; do
  source "${shell_script}"
done

sh "${BASEDIR}/scripts/install_homebrew.sh"
sh "${BASEDIR}/scripts/install_pip.sh"
sh "${BASEDIR}/scripts/install_docker.sh"
sh "${BASEDIR}/scripts/install_iterm2.sh"
sh "${BASEDIR}/scripts/install_oh_my_zsh.sh"
sh "${BASEDIR}/scripts/install_terraform.sh"
sh "${BASEDIR}/scripts/install_packer.sh"
