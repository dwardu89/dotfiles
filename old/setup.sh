#! /bin/bash
# Install zgen
git clone git@github.com:tarjoilija/zgen.git "${HOME}/.zgen"

# Install Vundle
git clone git@github.com:VundleVim/Vundle.vim.git "${HOME}/.vim/bundle/Vundle.vim"

cd ${HOME}/dotfiles

ls dotfiles -1 | xargs  -I % sh -c 'stow -d ~/dotfiles/dotfiles -t ${HOME} %'

brew bundle

# https://pawelgrzybek.com/sync-vscode-settings-and-snippets-via-dotfiles-on-github/