#! /bin/zsh

download_and_install_terraform () {
    terraform_dir="/tmp/terraform_$(timestamp)/"
    create_dir $terraform_dir
    app='Terraform'
    terraform_CHECKSUM='1584dc21ad5ac1dc0d9a2876542a85d092778d00a0622622c28f8740abadddb9'
    echo_say "$app" "Downloading terraform"
    curl -L https://releases.hashicorp.com/terraform/0.10.0/terraform_0.10.0_darwin_amd64.zip -o "${terraform_dir}terraform.zip"

    echo_say "$app" "Comparing Checksums"
    downloaded_file=$(shasum -a 256 ${terraform_dir}terraform.zip | awk '{print $1}')

    if [[ $terraform_CHECKSUM == $downloaded_file ]];
      then
        echo_say "$app" 'Checksum Success'
        echo_say "$app" 'Installing Terraform'
        unzip "${terraform_dir}terraform.zip"  -d "$terraform_dir" > /dev/null
        mv "${terraform_dir}terraform" /usr/local/bin/
      else
        echo_say "$app" 'Checksum Failed. Install Aborted';
    fi

    remove_dir $terraform_dir
}
