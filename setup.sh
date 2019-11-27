#! /bin/bash
REQUIREMENTS_FILE=requirements.json

jq -r '.taps[]' ${REQUIREMENTS_FILE} | xargs -t -I {} sh -c 'brew tap "$1"' - {}
jq -r '.formulae[]' ${REQUIREMENTS_FILE} | xargs -t -I {} sh -c 'brew install "$1"' - {}
jq -r '.cask[]' ${REQUIREMENTS_FILE} | xargs -t -I {} sh -c 'brew cask install "$1"' - {}

# link the zshrc file
ln -s ~/dotfiles/dotfiles/.zshrc ~/.zshrc
ls -l ~/dotfiles/dotfiles/.zshrc ~/.zshrc