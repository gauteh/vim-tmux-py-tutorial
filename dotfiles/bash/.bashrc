export PS1='\[\033[1m\][\h \W] \$ \[\033[0m\]'

## git
if [[ -e /usr/share/git/completion/git-prompt.sh ]]; then
  source /usr/share/git/completion/git-prompt.sh

  export GIT_PS1_SHOWDIRTYSTATE=true
  export GIT_PS1_SHOWSTASHSTATE=true
  export GIT_PS1_SHOWUNTRACKEDFILES=true
  export PS1='\[\033[1m\][\h \W]$(__git_ps1 "(%s)") \$ \[\033[0m\]'
fi


if [[ -e "$HOME/.mconda3" ]]; then
  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('$HOME/.mconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
      eval "$__conda_setup"
  else
      if [ -f "$HOME/.mconda3/etc/profile.d/conda.sh" ]; then
          . "$HOME/.mconda3/etc/profile.d/conda.sh"
      else
          export PATH="$HOME/.mconda3/bin:$PATH"
      fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<
fi

## Settings
export HISTFILESIZE=1000000

## Aliases
alias stow='stow -t ~'
alias ll='ls -l'

## Paths

# Add all subdirs and sub-subdirs in ~/.bin to PATH
if [[ $(uname) == "Darwin" ]]; then
  export PATH=$PATH$( find $HOME/.bin/ -print0 | xargs -0 stat -f ':%p' )
else
  export PATH=$PATH$( find $HOME/.bin/ -printf ":%p" )
  export PATH=$PATH$( find $HOME/.bin/*/* -type d -printf ":%p" )
fi

# Mac OS path helper
if [ -e /usr/lib/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi

# Prompt
if which starship 2>&1 > /dev/null; then
  eval "$(starship init bash)"
fi

# Direnv
if which direnv 2>&1 > /dev/null; then
  eval "$(direnv hook bash)"
fi

# allow any key to unfreeze after C-s
stty ixany


