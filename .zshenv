typeset -U PATH path

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

export NVM_DIR=${NVM_DIR:="$XDG_CONFIG_HOME/nvm"}

# pass-import
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
export PASSWORD_STORE_EXTENSIONS_DIR="$(python -m site --user-site)/usr/lib/password-store/extensions/"

export ENHANCD_FILTER="fzf --preview='eza --tree --group-directories-first --git-ignore --level 1 {}'"
export GTK_THEME='Catppuccin-Frappe-Standard-Lavender-dark:dark'

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
