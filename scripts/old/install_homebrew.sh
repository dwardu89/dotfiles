#! /bin/zsh

download_and_install_homebrew () {
    app='Homebrew'
    echo_say "$app" "Downloading and Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    brew doctor

    # ADD THE PATH TO THE PATH VARIABLE
    export PATH="/usr/local/bin:$PATH"

    source "${BASEDIR}/homebrew/homebrew_npm.sh"
    source "${BASEDIR}/homebrew/homebrew_cask.sh"
}
