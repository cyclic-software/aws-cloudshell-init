#!/usr/bin/env bash

# Hello! Welcome to my bootstrap script
#
# How to use:
# > bash <(curl -s https://raw.githubusercontent.com/cyclic-software/aws-cloudshell-init/main/bootstrap.sh)
# > ...something something
# > profit!

mkdir -p $HOME/.config
pushd $HOME/.config

if [ ! -d aws-cloudshell-init ]; then
    git clone https://github.com/cyclic-software/aws-cloudshell-init.git
else
    cd aws-cloudshell-init
    git pull
fi
popd


if ! grep '. aws-cloudshell-init.sh' $HOME/.bash_profile; then
    cat << EOF >> ~/.bash_profile

# Added by: cyclic-software/aws-cloudshell-init/main/bootstrap.sh
. $HOME/.config/aws-cloudshell-init/bash_profile.sh

EOF
fi

. $HOME/.config/aws-cloudshell-init/bash_profile.sh
