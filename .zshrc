export ZSH="$HOME/.oh-my-zsh"

export PATH=/home/abhigyanmadhukalya/.local/bin/:$PATH
export PATH=/home/abhigyanmadhukalya/.local/share/:$PATH
export PATH=/home/abhigyanmadhukalya/go/bin/:$PATH
export EDITOR="nvim"

export mysql_username="$(pass show db/mysql-username)"
export mysql_password="$(pass show db/mysql-password)"

ZSH_THEME=""

plugins=(git nvm pip ripgrep tmux pass firewalld rsync zsh-syntax-highlighting zsh-autosuggestions golang)

source $ZSH/oh-my-zsh.sh
source ~/.config/zsh/alias.sh
source ~/.config/zsh/func.sh

HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

export PATH=$PATH:/home/abhigyanmadhukalya/.spicetify
eval "$(zoxide init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/abhigyanmadhukalya/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/abhigyanmadhukalya/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/abhigyanmadhukalya/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/abhigyanmadhukalya/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/usr/local/go/bin
