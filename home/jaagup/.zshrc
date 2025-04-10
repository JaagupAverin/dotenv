HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
zstyle :compinstall filename '/home/jaagup/.zshrc'

autoload -Uz compinit
compinit

#autoload -Uz vcs_info
#precmd() { vcs_info }
#zstyle ':vcs_info:git:*' formats '%b '
#setopt PROMPT_SUBST
PROMPT='%F{green}%~%f '

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

function cd() {
  builtin cd "$@"

  if [[ -z "$VIRTUAL_ENV" ]] ; then
    ## If env folder is found then activate the vitualenv
      if [[ -d ./.venv ]] ; then
        source ./.venv/bin/activate
      fi
  else
    ## check the current folder belong to earlier VIRTUAL_ENV folder
    # if yes then do nothing
    # else deactivate
      parentdir="$(dirname "$VIRTUAL_ENV")"
      if [[ "$PWD"/ != "$parentdir"/* ]] ; then
        deactivate
      fi
  fi
}

function stash() {
  git add .
  if [ -z  "$1"]; then
    msg="No description."
  else
    msg="$*"
  fi
  git commit -m "$msg"
  git push
  echo "Committed and pushed all directory changes with message: '$msg'"
}

function tssh() {
  ssh $* -t -- /bin/sh -c 'tmux has-session && exec tmux attach || exec tmux'
}

export EDITOR=zed
export VISUAL=zed
export PATH="$PATH:/home/jaagup/.local/bin"
source "$HOME/.rye/env"

export TERMINAL=$(basename "/"$(ps -o cmd -f -p $(cat /proc/$(echo $$)/stat | cut -d \  -f 4) | tail -1 | sed 's/ .*$//'))

export ZELLIJ_AUTO_ATTACH=true

if [[ "$TERMINAL" == "alacritty" ]]; then
    ZJ_SESSIONS=$(zellij list-sessions)
    NO_SESSIONS=$(echo "${ZJ_SESSIONS}" | wc -l)

    if [ "${NO_SESSIONS}" -ge 2 ]; then
        zellij attach "$(echo "${ZJ_SESSIONS}" | sk --ansi | awk '{print $1}')"
    else
    zellij attach -c
    fi
fi
