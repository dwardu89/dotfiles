#! /bin/zsh
download_and_install_iterm2 () {
    iterm_dir="/tmp/iterm_$(timestamp)/"
    app='iTerm2'
    create_dir $iterm_dir

    echo_say $app "Downloading iTerm2 and iTerm2 Shell Integration"
    echo "${iterm_dir}iTerm2.zip"
    curl -L https://iterm2.com/misc/`basename $SHELL`_startup.in -o "${iterm_dir}.iterm2_shell_integration.`basename $SHELL`"

    echo_say $app "Comparing Checksums"

    echo_say $app 'Installing iTerm2'
    brew cask install iterm2
    mv "${iterm_dir}.iterm2_shell_integration.`basename $SHELL`" "~/.iterm2_shell_integration.`basename $SHELL`";


    remove_dir $iterm_dir
}
