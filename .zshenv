typeset -U PATH path

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

export NVM_DIR=${NVM_DIR:="$XDG_CONFIG_HOME/nvm"}

export PASSWORD_STORE_ENABLE_EXTENSIONS=true
export PASSWORD_STORE_EXTENSIONS_DIR="$(python -m site --user-site)/usr/lib/password-store/extensions/"

export BAT_THEME="gruvbox-dark"

