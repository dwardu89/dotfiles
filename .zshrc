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

export PATH="${PATH}:${HOME}/go/bin"

### Aliases

alias code='codium'

function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}
PATH="/usr/local/opt/openjdk/bin:$PATH"

export PATH="/usr/local/opt/ruby/bin:$PATH"
PATH="/usr/local/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH="${PATH}:${HOME}/.krew/bin"
GOPATH="${HOME}/go"


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="/usr/local/opt/curl-openssl/bin:$PATH"
export PATH="/usr/local/opt/curl-openssl/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"

neofetch
