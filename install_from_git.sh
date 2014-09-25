#!/usr/bin/env bash

source /vagrant/custom.sh

# Install dotfiles
if [[ -n "$username" ]]; then
    DOTFILES_DIR="${HOME}/.dotfiles"
    git clone "git@github.com:${username}/dotfiles.git" $DOTFILES_DIR
    ${DOTFILES_DIR}/setup_dotfiles.sh
fi
if [[ -n "$git_name" ]]; then
    git config --global user.name "$git_name";
fi
if [[ -n "$git_email" ]]; then
    git config --global user.email "$git_email";
fi
