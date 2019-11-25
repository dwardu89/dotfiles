install_brew_apps () {
  brew install neovim chromedriver  duti hr httpie imagemagick jq livestreamer mas mediainfo mkvtoolnix mp4v2 lastpass-cli  <<< "${sudo_password}" 2> /dev/null
  # install tmux related things
  brew install reattach-to-user-namespace

  # install zsh_plugins
  brew install zsh-autosuggestions zsh-completions zsh-history-substring-search zsh-syntax-highlighting zsh-git-prompt
  brew install gnu-tar  --with-default-names
  brew install gnu-sed  --with-default-names
 }

install_air_vpn_client () {
  renew_sudo
  brew cask install eddie
}

install_aws_related () {
  renew_sudo
  brew install awscli
  brew cask install aws-vault
}

install_google_cloud_related() { 
  brew cask install google-cloud-sdk
}

install_cask_apps () {
  # apps
  renew_sudo
  brew cask install alfred atom google-chrome

  # Install security based apps
  brew cask install keybase
}

install_hashicorp_related() {
  # install hashicorp stack
  brew install terraform packer consul vault
}

1password() {
  brew cask install 1password 1password-cli
}

lastpass() {
  brew cask install lastpass
  brew install lastpass-cli
}

install_fonts() {
  # multiple
  brew cask install font-alegreya font-alegreya-sans font-alegreya-sans-sc font-alegreya-sc
  brew cask install font-fira-mono font-fira-sans
  brew cask install font-input
  brew cask install font-merriweather font-merriweather-sans
  brew cask install font-pt-mono font-pt-sans font-pt-serif
  brew cask install font-source-code-pro font-source-sans-pro font-source-serif-pro
  # sans
  brew cask install font-aileron font-bebas-neue font-exo2 font-montserrat font-lato font-open-sans font-open-sans-condensed font-signika
  # serif
  brew cask install font-abril-fatface font-butler font-gentium-book-basic font-playfair-display font-playfair-display-sc
  # slab
  brew cask install font-bitter font-kreon
  # script
  brew cask install font-pecita

}

iterm_2() {
  brew cask install iterm2  
}

vs_code() {
  brew cask install visual-studio-code
}

slack() {
  brew cask install slack
}

logitech_related() {
  brew cask install logitech-options
}

whatsapp() {
   brew cask install whatsapp
}

vlc() {
  # There is a repo for iptv https://github.com/iptv-org/iptv
  brew cask install vlc
}