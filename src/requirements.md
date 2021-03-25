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

## If you do not have access to install this manually

> NOTE: Some of these instructions need to be updated to use different binaries if you are on a Mac.

Make dir for binaries:

```
mkdir -p ~/.bin
```

follow instructions in [shell](shell.md) for how to add subdirs in `.bin` to `$PATH`.


Node:

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
source ~/.nvm/nvm.sh
nvm install node
nvm alias default node
```

Ripgrep:

```
curl -L -o- https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep-12.1.1-x86_64-unknown-linux-musl.tar.gz | tar -C .bin -zx
```


Direnv:

```
curl -L -o- https://github.com/direnv/direnv/releases/download/v2.28.0/direnv.linux-amd64 > ~/.bin/direnv
chmod +x ~/.bin/direnv
```

Stow:

```
mkdir -p ~/.bin/stow
cd ~/.bin/stow
wget http://ftp.gnu.org/gnu/stow/stow-2.3.1.tar.gz
tar xf stow-2.3.1.tar.gz
cd stow-2.3.1
./configure --prefix=$HOME/.bin/stow/inst
make
make install
cd ~/.bin/stow
ln -s ~/.bin/stow/inst/bin/stow stow
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
conda create -n wombat python=3
```

