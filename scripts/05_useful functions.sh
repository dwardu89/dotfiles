cleanup_brew() {
  rm -rf "$(brew --cache)"
}

cleanup_error_log() {
  sed -i '' -E '/^Password: /d;/#.*%/d;/\* \[new/d;/Cloning into/d;/Should we execute post_install_script/d' "${error_log}"
}

move_manual_action_files() {
  mv "${helper_files}" "${post_install_files}"
  mv "${post_install_files}/post_install_script.sh" "${post_install_script}"
}
