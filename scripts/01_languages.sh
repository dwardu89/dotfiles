install_brew() {
  renew_sudo
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
  brew analytics off

  # Installing brew cask
  brew tap caskroom/cask
}

install_python() {
  brew install python python3
  pip2 install --upgrade pip setuptools wheel
  pip3 install --upgrade pip setuptools wheel
}

install_node() {
  brew install node yarn
  yarn config set prefix "$(brew --prefix)"
  yarn config set ignore-engines
  # install some packages
  yarn global add grunt-cli
}
