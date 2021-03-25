# Setting up the shell

miniconda3 should now be present in `.bashrc` as part of the [requirements](requirements.md) section.

## Useful aliases

Add to `.bashrc`:

```sh
## Paths
mkdir -p ~/.bin
export PATH=$PATH:~/.bin
export PATH=$PATH:~/.vim/plugged/fzf/bin
export FZF_BASE=~/.vim/plugged/fzf

# Add all subdirs and sub-subdirs in ~/.bin to PATH
if [[ $(uname) == "Darwin" ]]; then
  export PATH=$PATH$( find $HOME/.bin/ -print0 | xargs -0 stat -f ':%p' )
    # export PATH=$PATH$( find $HOME/.bin/*/* -type d -printf ":%p" )
else
  export PATH=$PATH$( find $HOME/.bin/ -printf ":%p" )
  export PATH=$PATH$( find $HOME/.bin/*/* -type d -printf ":%p" )
fi

# Mac OS path helper
if [ -e /usr/lib/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi

export EDITOR=vim

alias stow='stow -t ~' # target for stow is home directory
alias ll='ls -l'
if [[ $(uname) == "Darwin" ]]; then
  alias ls="ls -G"
else
  alias ls="ls --color=auto"
fi
```

## Bonus: Fancy prompt

Install [starship.rs](https://starship.rs/).

## Example .bashrc

```sh
{{#include ../dotfiles/bash/.bashrc }}
```

