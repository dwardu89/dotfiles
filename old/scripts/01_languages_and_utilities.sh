install_brew() {
  renew_sudo
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
  brew analytics off

  # Installing brew cask
  brew tap caskroom/cask
  brew tap homebrew/cask-drivers
  brew tap homebrew/cask-fonts
}

install_golang() {
  brew install go
}

install_mac_app_store_cli() {
  brew install mas
  # Install 1blocker
  mas search 1blocker | awk '{print $1}' | xargs mas install
  mas search "fantastical 2" | awk '{print $1}' | xargs mas install
}

install_python() {
  brew install python python3
  pip2 install --upgrade pip setuptools wheel
  pip3 install --upgrade pip setuptools wheel
  pip2 install thefuck

  # Create a symbolic link for the python2 homebrew in order to bypass the
  # system python interpreter
  
}

install_node() {
  brew install node yarn
  yarn config set prefix "$(brew --prefix)"
  yarn config set ignore-engines
  # install some packages
  yarn global add grunt-cli
}
