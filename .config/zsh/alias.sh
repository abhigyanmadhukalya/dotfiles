alias vim="nvim"
alias ls="eza --long --header --git --all --icons=always"
alias ll="eza -l -h --icons=always"
alias cat="bat"
# alias curl="curlie"
alias sudo="doas"
alias sudoedit="doasedit"
alias grep="rg"
alias man="tldr"
alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/nvidia-settings.rc'
alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'
alias mysql="mysql -u $(pass show db/mysql-username) -p$(pass show db/mysql-password)"
alias weather="curl v2.wttr.in/Guwahati"
alias cd="__enhancd::cd"
