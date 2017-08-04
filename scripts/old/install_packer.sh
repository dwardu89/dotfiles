#! /bin/zsh
download_and_install_packer () {
    packer_dir="/tmp/packer_$(timestamp)/"

    create_dir $packer_dir
    app='Packer'
    packer_CHECKSUM='38a9f2d9b8f8a4963237dfb5d12b71593d16dac0afc42cab75ad475aaf7a110a'
    echo_say "$app" "Downloading packer"
    curl -L https://releases.hashicorp.com/packer/1.0.3/packer_1.0.3_darwin_amd64.zip -o "${packer_dir}packer.zip"

    echo_say "$app" "Comparing Checksums"
    downloaded_file=$(shasum -a 256 ${packer_dir}packer.zip | awk '{print $1}')

    if [[ $packer_CHECKSUM == $downloaded_file ]];
      then
        echo_say "$app" 'Checksum Success'
        echo_say "$app" 'Installing Packer'
        unzip "${packer_dir}packer.zip"  -d "$packer_dir" > /dev/null
        mv "${packer_dir}packer" /usr/local/bin/
      else
        echo_say "$app" 'Checksum Failed. Install Aborted';
    fi

    remove_dir $packer_dir
}
