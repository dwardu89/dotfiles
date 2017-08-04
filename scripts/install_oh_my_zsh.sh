#! /bin/zsh
BASEDIR=$(dirname "$0")

source "${BASEDIR}/common_functions.sh"

ohmyzsh_dir="/tmp/ohmyzsh_$(timestamp)/"
app="Oh My zsh"

download_and_install () {
    echo_say "$app" "Downloading Oh My zsh"

    curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -o "${ohmyzsh_dir}install.sh"

    sh "${ohmyzsh_dir}install.sh"

    echo_say "$app" "Installing Powerline9k"
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k


    echo_say "$app" "Downloading fonts for Powerline"
    # clone
    git clone https://github.com/powerline/fonts.git "${ohmyzsh_dir}fonts"
    # install
    echo_say "$app" "Installing fonts for Powerline"
    sh "${ohmyzsh_dir}fonts/install.sh"
}

copy_dotfiles () {
  echo_say ""$app"" "Copying dotfiles"
   cp "${BASEDIR}/../tools/.zshrc" ~/.zshrc
}

create_dir $ohmyzsh_dir

#Install function for iTerm2
download_and_install

copy_dotfiles

remove_dir $ohmyzsh_dir
