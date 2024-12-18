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
PROMPT='%F{red}%~%f '

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

export EDITOR=nano
export PATH="$PATH:/home/jaagup/.local/bin"
export PATH="$PATH:/home/jaagup/odin-linux-amd64-dev-2024-10"
source "$HOME/.rye/env"

terminal="$(ps -p $(ps -p $$ -o ppid=) -o comm=)"

if [ "$terminal" = "konsole" ]; then
    tmux attach || tmux new -s tmux
fi
