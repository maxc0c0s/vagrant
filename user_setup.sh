#!/usr/bin/env bash

source /vagrant/custom.sh

KEY_FILE_NAME="id_rsa"
ssh-keygen -t rsa -f "${HOME}/.ssh/$KEY_FILE_NAME" -N ""

# Send ssh public key to Github
key=$( cat ~/.ssh/${KEY_FILE_NAME}.pub )
if [[ -n "$username" ]] && [[ -n "$password" ]] && [[ -n "$key_title" ]] && [[ -n "$key" ]]; then
    json='{"title":"'$key_title'","key":"'$key'"}';
    curl -u "$username:$password" --data "$json" https://api.github.com/user/keys;
    ssh-keyscan -H github.com >> ~/.ssh/known_hosts
fi
