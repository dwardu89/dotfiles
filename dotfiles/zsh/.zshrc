export MAIN_EDITOR="vim"
export EDITOR=${MAIN_EDITOR}
export HISTFILE=~/.zsh_history
export HISTSIZE=100000

# Setup the GNU Tools
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
PATH="/usr/local/opt/binutils/bin:$PATH"
PATH="/usr/local/opt/ed/libexec/gnubin:$PATH"
PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-indent/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-which/libexec/gnubin:$PATH"
PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
PATH="/usr/local/opt/m4/bin:$PATH"
PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
PATH="/usr/local/opt/ncurses/bin:$PATH"
PATH="${HOME}/dotfiles/bin:$PATH"
PATH="${HOME}/.local/bin:$PATH"

# source anaconda
# echo "Conda activated"
#source /usr/local/anaconda3/bin/activate

# load zgen
# Set the automated reset on change
ZGEN_RESET_ON_CHANGE=(${HOME}/.zshrc ${HOME}/.zshrc.local)
source "${HOME}/.zgen/zgen.zsh"

# zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff0010,bg=#000000,bold,underline"
ZSH_AUTOSUGGEST_STRATEGY="history"

# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/sudo
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/gnu-utils
  zgen oh-my-zsh themes/awesomepanda

  zgen load zsh-users/zsh-autosuggestions
  zgen load zsh-users/zsh-apple-touchbar
  
  zgen load chrissicool/zsh-256color
  # generate the init script from plugins above
  zgen save
fi

# zsh-users/zsh-apple-touchbar
set_state 'first'

function first_view() {
  remove_and_unbind_keys

  set_state 'first'

  create_key 1 '👉 pwd' 'pwd |tr -d "\\n" |pbcopy' '-s'
  create_key 2 'second view' 'second_view'
}

function second_view() {
  remove_and_unbind_keys

  set_state 'second'

  create_key 1 '👈 back' 'first_view'
  create_key 2 'current path' 'pwd' '-s'

  set_state 'first'
}

zle -N first_view
zle -N second_view

precmd_apple_touchbar() {
  case $state in
    first) first_view ;;
    second) second_view ;;
  esac
}

autoload -Uz add-zsh-hook

add-zsh-hook precmd precmd_apple_touchbar

export PATH="${PATH}:${HOME}/go/bin"

source ${HOME}/.zshrc.local

### Aliases

alias kuebctl='kubectl'
alias k='kubectl'

# Openvpn path
export PATH=$(brew --prefix openvpn)/sbin:$PATH

function s2a { eval $( $(which saml2aws) script --shell=bash --profile=$@); }
function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}
PATH="/usr/local/opt/openjdk/bin:$PATH"
alias k=kubectl
source <(kubectl completion zsh)

export PATH="/usr/local/opt/ruby/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="/Users/edwardvella/tractable/istio-1.6.3/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH="${PATH}:${HOME}/.krew/bin"
GOPATH="${HOME}/go"


# Kubernetes aliases
source ~/.zshrc.k8salias
