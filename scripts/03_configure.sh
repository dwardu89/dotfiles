configure_iterm_2 () {
  echo_say "iTerm 2" "Configuring iTerm 2"

}

configure_zsh() { # make zsh default shell
  sudo -S sh -c 'echo "/bin/zsh" >> /etc/shells' <<< "${sudo_password}" 2> /dev/null
  sudo -S chsh -s '/bin/zsh' "${USER}" <<< "${sudo_password}" 2> /dev/null
}

configure_oh_my_zsh () {
  echo_say "OhMyZsh" "Copying config"
  cp "${BASEDIR}/../tools/.zshrc" ~/.zshrc
}

configure_git () {
    echo_say "git" "Configuring git"
    git config --global user.name "${name}"
    git config --global user.email "${github_email}"
    git config --global github.user "${github_username}"
    git config --global push.default simple
    git config --global rerere.enabled true
    git config --global rerere.autoupdate true
}

install_atom_packages() {
  echo_say "Atom" "Configuring Atom"

  # packages
  apm install highlight-line language-python language-todo language-shellscript language-yaml language-xml language-json

  # themes and syntaxes
  apm install peacock-syntax solarized-dark-syntax atom-dark-ui pretty-json python-tools
}
