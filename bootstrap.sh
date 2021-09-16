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

# if [ ! -f /etc/profile.d/aws-cloudshell-init.sh ]; do
    # cp aws-cloudshell-init/init/aws-cloudshell-init.sh /etc/profile.d/aws-cloudshell-init.sh
    # . /etc/profile.d/aws-cloudshell-init.sh
# done

if ! grep '. aws-cloudshell-init.sh' $HOME/.bash_profile; then
    echo "# Added by: cyclic-software/aws-cloudshell-init/main/bootstrap.sh\n. aws-cloudshell-init.sh" \
        >> ~/.bash_profile
fi

. $HOME/.config/aws-cloudshell-init/aws-cloudshell-init.sh
