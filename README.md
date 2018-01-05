Docker-GO Oh-My-ZSH Plugin
===================

# Purpose

This plugins aims to provide completion when using a docker container for building Go programs.

# Installation

Clone this repository into your custom plugins path:

    git clone --depth=1 https://github.com/MartialGeek/omzsh-docker-go ${ZSH_CUSTOM}/plugins/docker-go

Then edit your ~/.zshrc, enable the plugin `docker-go` and export a variable GOPATH. Ex:

```sh
plugins=(
... # some plugins
docker-go
)

# the variable MUST be declared before the instruction 'source $ZSH/oh-my-zsh.sh'
export GOPATH="${HOME}/go"

source $ZSH/oh-my-zsh.sh
```

