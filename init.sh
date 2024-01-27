#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then

    if ! command -v brew &> /dev/null; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    brew install git zsh neovim

elif [ -f /etc/debian_version ]; then

    sudo apt update
    sudo apt install -y git zsh neovim

else
    echo "wat are you trying to do?"
fi

