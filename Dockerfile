FROM ubuntu:latest

RUN mkdir /src

WORKDIR /src

ADD dotfiles /src

ENV TZ="UTC"

RUN apt-get update -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y stow vim git tmux nodejs ripgrep curl wget

RUN curl -fsSL https://starship.rs/install.sh | bash -s - --yes

