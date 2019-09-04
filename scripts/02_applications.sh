install_brew_apps () {
  brew install neovim chromedriver  duti hr httpie imagemagick jq livestreamer mas mediainfo mkvtoolnix mp4v2 lastpass-cli  <<< "${sudo_password}" 2> /dev/null
  # install tmux related things
  brew install reattach-to-user-namespace
  # install hashicorp stack
  brew install terraform packer consul vault

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
 }

install_cask_apps () {
  # apps
  renew_sudo
  brew cask install alfred aws-vault atom google-chrome

  # Install security based apps
  brew cask install keybase

  # fonts
  brew tap caskroom/fonts
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

install_iterm_2() {
  
}
