echo_say () {
  echo "[$1] $2"
}

timestamp () {
  echo $(date +%s)
}

create_dir () {
  mkdir $1
  echo_say "$app" "Created temporary directory $1"
}

remove_dir () {
  echo_say "$app" "Removing Temporary Directory $1"
  rm -rf $1
}

renew_sudo () { # helper function for when the following command needs 'sudo' active but shouldn't be called with it
  sudo -S -v <<< "${sudo_password}" 2> /dev/null
}
