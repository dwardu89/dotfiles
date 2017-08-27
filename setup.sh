#! /bin/bash
run_setup () {
  # source all shell scripts
  for shell_script in "${HOME}/scripts/"*.sh;
  do
    echo "${shell_script}"
    source "${shell_script}"
  done

  initial_setup
  ask_details
  sync_icloud
  update_system

  # Languages and Utilities
  install_brew
  install_python
  install_node

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

  # Update dotfiles
  backup_existing_dotfiles
  symlink_dotfiles

  # Cleanup
  cleanup_brew
  cleanup_error_log
}

# run and log errors to file (but still show them when they happen)
readonly error_log="${HOME}/Desktop/install_errors.log"
run_setup 2> >(tee "${error_log}")
