#! /bin/zsh
BASEDIR=$(dirname "$0/")

source "${BASEDIR}/common_functions.sh"

app='Docker'


download_and_install () {
    echo_say "$app" "Downloading docker"
    curl -L https://download.docker.com/mac/stable/Docker.dmg  -o "${docker_dir}Docker.dmg"

    echo_say "$app" "Comparing Checksums"
    docker_CHECKSUM=$(curl -L https://download.docker.com/mac/stable/Docker.dmg.sha256sum  2>/dev/null  | awk '{print $1}')
    downloaded_file=$(shasum -a 256 ${docker_dir}Docker.dmg | awk '{print $1}')

    if [[ $docker_CHECKSUM == $downloaded_file ]];
      then
        echo_say "$app" 'Checksum Success'
        echo_say "$app" 'Installing Docker'
        hdiutil attach "${docker_dir}Docker.dmg"
        cp -rf "/Volumes/Docker/Docker.app" /Applications/
        hdiutil detach "/Volumes/Docker"
      else
        echo_say "$app" 'Checksum Failed. Install Aborted';
    fi

}

docker_dir="/tmp/docker_$(timestamp)/"

create_dir $docker_dir

#Install function for docker
download_and_install

remove_dir $docker_dir
