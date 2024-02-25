# 💤 LazyVim

Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Install homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Using brew in both linux and MacOs

`brew install terraform kubectl ansible lazygit yamlfmt tfsec markdownlint-cli`

## Linux setup

### Required packages

`sudo apt update && sudo apt install \
gcc g++ npm shellcheck curl git zsh \
ripgrep fzf ansible-lint black shfmt \
isort build-essential tmux -y && sudo apt autoremove -y`

### Install nerd font

`curl https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Agave.zip -o ~/Downloads/agave.zip`

### install ohmyz

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### Install neovim

`brew install neovim`
