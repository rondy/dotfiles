
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
#alias python=/opt/homebrew/bin/python3
export PATH="$(brew --prefix)/opt/python@3/libexec/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias vb="cd ~/src/volpi/volpi-backend"
alias v="cd ~/src/volpi"

gpfb() {
  git add . && git ci --amend -C HEAD && git push -f
}

function git-search() {
  git log -S"$1" --no-merges -c --pretty=format:'%h %s [%an]'
}
export PATH="/opt/homebrew/opt/redis@6.2/bin:$PATH"
