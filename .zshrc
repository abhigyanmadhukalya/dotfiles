export ZSH="$HOME/.oh-my-zsh"

export PATH=$HOME/.local/bin/:$PATH
export PATH=$HOME/.local/share/:$PATH
export PATH=$HOME/go/bin/:$PATH
export PATH=$HOME/.config/emacs/bin/:$PATH
export EDITOR="nvim"

ZSH_THEME=""

plugins=(git nvm pip ripgrep tmux pass firewalld rsync zsh-syntax-highlighting zsh-autosuggestions golang enhancd)

source $ZSH/oh-my-zsh.sh
source ~/.config/zsh/alias.sh
source ~/.config/zsh/func.sh

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

export PATH=$PATH:/home/abhigyanmadhukalya/.spicetify
eval "$(zoxide init zsh)"

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/abhigyan/.spicetify
