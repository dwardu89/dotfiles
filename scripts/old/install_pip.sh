#! /bin/zsh

download_and_install_pip () {
    app='pip'
    echo_say "$app" "Downloading and Installing pip"
    curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | python
    pip install virtualenv
    pip install virtualenvwrapper
    export WORKON_HOME=~/Envs
    mkdir -p $WORKON_HOME
    source /usr/local/bin/virtualenvwrapper.sh
    mkvirtualenv env1
}
