# Intro

A setup of vim, tmux, git for python development with code-completion and linting.

# Requirements

## Ubuntu packages

```sh
apt install tmux
apt install nodejs      # node
snap install ripgrep    # better grep
apt install stow        # manage dotfiles
apt install direnv      # manage environment in directories
```

## Miniconda3 (Python)

Install [miniconda3](https://docs.conda.io/en/latest/miniconda.html):

* [Linux 64-bit](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)

```sh
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh
```

### Creating an enviornment

```sh
conda create -n vtgp python=3
```
