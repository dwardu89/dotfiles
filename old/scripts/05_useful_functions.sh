cleanup_brew() {
  rm -rf "$(brew --cache)"
}

cleanup_error_log() {
  sed -i '' -E '/^Password: /d;/#.*%/d;/\* \[new/d;/Cloning into/d;/Should we execute post_install_script/d' "${error_log}"
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
