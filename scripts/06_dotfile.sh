
declare -a dotfiles=('.zshrc' '.vimrc');

backup_existing_dotfiles() {
  for i in "${dotfiles[@]}"
  do
    FILE="${HOME}/${i}"
    if [ -f  $FILE ]; then
       echo "Backing up ${FILE} to ${FILE}.bak."
       mv $FILE "${FILE}.bak"
    fi
  done
}

symlink_dotfiles() {
  DOTFILES_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  for i in "${dotfiles[@]}"
  do
    SOURCE="${DOTFILES_PATH}/../dotfiles/${i}"
    DESTINATION="${HOME}/${i}"
    if [ -f  $SOURCE ]; then
       echo "Symlinking ${FILE} to ${FILE}.bak."
       ln -s  $SOURCE $DESTINATION
    else
       echo "$SOURCE doesn't exist"
    fi
  done
}
