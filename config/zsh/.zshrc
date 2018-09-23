
# AUTOLOAD
autoload -U compinit && compinit
autoload -U colors && colors
autoload up-line-or-beginning-search
autoload down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# EXPORTS
export CLICOLOR=1
export EDITOR=nano
export KEYTIMEOUT=1
export QUOTING_STYLE=literal
export TERM=xterm-256color
export DEBUGGER_PORTS=(9222 9229 5858)

# OPTIONS
unsetopt flowcontrol
unsetopt menu_complete
setopt always_to_end
setopt append_history
setopt auto_cd
setopt auto_menu
setopt auto_pushd
setopt complete_in_word
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt interactivecomments
setopt long_list_jobs
setopt multios
setopt prompt_subst
setopt pushd_ignore_dups
setopt pushdminus
setopt share_history

# HISTORY
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# COMPLETION
zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete
zstyle ':completion:' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|= r:|=*'

# KEYBINDINGS
bindkey -e
[[ -n "${key[Up]}"   ]] && bindkey "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey "${key[Down]}" down-line-or-beginning-search

# ALIASES
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias reload="exec $SHELL -l"

# DEBUGGER PLUGIN

function debugger () {
  ( sleep 1 && debugger-devtools ) & debugger-inspect "$@"
}
function debugger-inspect () {
  if [[ $1 == .* ]]; then
    local app=$1
    local args=${@:2}
  elif [[ $1 == 'node' ]]; then
    local app=$2
    local args=${@:3}
  else
    local app=`which $1 | sed 's/\(.* aliased to \)//'`
    local args=${@:2}
  fi
  local app=`echo $app | sed "s#^~#$HOME#"`
  node --inspect-brk $app $args
}
function debugger-devtools () {
  for port in ${DEBUGGER_PORTS[*]}; do
    local list=`curl -s http://localhost:$port/json/list`
    if [[ ! -z "$list" ]]; then
      local url=`echo $list | jq -r '.[0].devtoolsFrontendUrl'`
      echo "---------------------------"
      echo $url
      echo "---------------------------"
      google-chrome $url
    fi
  done
}
function plugin-debugger () {
  if [[ $LBUFFER == debugger\ * ]]; then
    LBUFFER=`echo $LBUFFER | cut -d' ' -f2-`
  else
    LBUFFER="debugger $LBUFFER"
  fi
}

zle -N plugin-debugger
bindkey "\e\e" plugin-debugger

# PROMPT
if [[ $SSH_CONNECTION != '' ]]; then
  local is_ssh=1
fi
if [[ $UID -eq 0 ]]; then # ROOT USER
  local user='%{$fg[red]%}%n%{$reset_color%}'
  local hostname='%{$fg[red]%}@%m%{$reset_color%}'
elif [[ -n $is_ssh ]]; then
  local user='%{$fg[yellow]%}%n%{$reset_color%}'
  local hostname='%{$fg[yellow]%}@%m%{$reset_color%}'
fi
if [[ -n $session_name ]]; then
  local tmux='%{$fg[magenta]%}tmux@$session_name%{$reset_color%}'
else
  local tmux='%{$fg[magenta]%}tmux%{$reset_color%}'
fi
local command='%(?.%{$fg[yellow]%}.%{$fg[red]%})❯%{$reset_color%}'
local directory='%{$fg[cyan]%}%~%{$reset_color%}'
PROMPT="${user}${hostname} ${directory} ${command} "
