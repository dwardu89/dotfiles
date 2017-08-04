restore_settings() {

  }

configure_zsh() { # make zsh default shell
  sudo -S sh -c 'echo "/usr/local/bin/zsh" >> /etc/shells' <<< "${sudo_password}" 2> /dev/null
  sudo -S chsh -s '/usr/local/bin/zsh' "${USER}" <<< "${sudo_password}" 2> /dev/null
}

configure_oh_my_zsh () {

}

configure_git () {
    git config --global user.name "${name}"
    git config --global user.email "${github_email}"
    git config --global github.user "${github_username}"
    git config --global push.default simple
    git config --global rerere.enabled true
    git config --global rerere.autoupdate true
}

install_atom_packages() {
  # packages
  apm install highlight-line language-python

  # themes and syntaxes
  apm install peacock-syntax
}
