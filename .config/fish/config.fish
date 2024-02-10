set fish_greeting ""

begin
  nvm use latest
end &> /dev/null

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
command -qv nvim && alias vim nvim
alias curl curlie
alias pip pip3
alias cat bat

alias sqlstop "sudo service mysqld stop"
alias sqlstart "sudo service mysqld start"


set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# pnpm
set -gx PNPM_HOME "/home/abhigyan/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

# Eza
if type -q exa
  alias ls='eza -l -g -a --icons=always --group-directories-first'
  alias ll='eza -l -g --icons=always --group-directories-first'
  alias lt="ll --tree --level=2"
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"
