#! /bin/zsh
BASEDIR=$(dirname "$0/")

source "${BASEDIR}/common_functions.sh"

app='iTerm2'
ITERM2_CHECKSUM='90e6f2bd3eb2d245f4ab2c9f856c627c8a1536bac024fb3989db417bc3147565'


download_and_install () {
    echo_say $app "Downloading iTerm2 and iTerm2 Shell Integration"
    echo "${iterm_dir}iTerm2.zip"
    curl -L https://iterm2.com/downloads/stable/iTerm2-3_0_15.zip -o "${iterm_dir}iTerm2.zip"
    curl -L https://iterm2.com/misc/`basename $SHELL`_startup.in -o "${iterm_dir}.iterm2_shell_integration.`basename $SHELL`"

    echo_say $app "Comparing Checksums"
    downloaded_file=$(shasum -a 256 ${iterm_dir}iTerm2.zip | awk '{print $1}')

    if [[ $ITERM2_CHECKSUM == $downloaded_file ]];
      then
        echo_say $app 'Checksum Success'
        echo_say $app 'Installing iTerm2'
        unzip "${iterm_dir}iTerm2.zip"  -d "$iterm_dir" > /dev/null
        mv "${iterm_dir}iTerm.app/" /Applications/
        mv "${iterm_dir}.iterm2_shell_integration.`basename $SHELL`" "~/.iterm2_shell_integration.`basename $SHELL`";

      else
        echo_say $app 'Checksum Failed. Install Aborted';
    fi

}

iterm_dir="/tmp/iterm_$(timestamp)/"

create_dir $iterm_dir

#Install function for iTerm2
download_and_install

remove_dir $iterm_dir
