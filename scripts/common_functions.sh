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
export -f echo_say > /dev/null
export -f timestamp > /dev/null
export -f create_dir > /dev/null
export -f remove_dir > /dev/null
