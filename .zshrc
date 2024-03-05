# Use powerline
USE_POWERLINE="true"

# History
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt appendhistory

alias vim="nvim"

export EDITOR="nvim"
export VISUAL=nvim

source /usr/share/nvm/init-nvm.sh

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

## Setup fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ff="fzf --height 40% --reverse"
alias fv='vim $(ff)'

eval "$(zoxide init zsh)"

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source "$HOME/.zsh/spaceship/spaceship.zsh"
alias ls="exa"


bindkey "^A" vi-beginning-of-line
bindkey "^E" vi-end-of-line

function run_sessionizer {
    zle push-input
    BUFFER="tmux-sessionizer"
    zle accept-line
}
zle -N run_sessionizer
bindkey "^F" run_sessionizer

fpath=(~/.zsh/zsh-completions/src $fpath)


PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/config:$PATH"
