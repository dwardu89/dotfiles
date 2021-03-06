#!/bin/bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update brew
brew update

# Install git to pull from git repository
brew install git jq

# git clone repository to ~/dotfiles
git clone https://github.com/dwardu89/dotfiles.git ${HOME}/dotfiles

# Set working directory to dotfiles
cd ${HOME}/dotfiles

# Run setup
${HOME}/dotfiles/setup.sh
