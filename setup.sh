#! /bin/zsh
run_setup () {
  #download the dofiles from github
  curl --progress-bar --location 'https://github.com/dwardu89/dotfiles/archive/master.zip' | ditto -xk - '/tmp'

  # source all shell scripts
  for shell_script in "/tmp/dotfiles-master/scripts/"*.sh; do
    source "${shell_script}"
  done

  initial_setup
  ask_details
  sync_icloud
  update_system

  # Languages and Utilities
  install_python
  install_node
  install_brew

  # Applications

  install_brew_apps
  install_cask_apps
  install_air_vpn_client
  install_aws_related

  # Configure
  configure_zsh
  configure_oh_my_zsh
  configure_git
  configure_iterm_2
  install_atom_packages

  # MacOS Configuration
  configure_macos

  # Cleanup
  cleanup_brew
  cleanup_error_log

  rm -rf "/tmp/dotfiles-master"
}

# run and log errors to file (but still show them when they happen)
readonly error_log="${HOME}/Desktop/install_errors.log"
run_setup 2> >(tee "${error_log}")
