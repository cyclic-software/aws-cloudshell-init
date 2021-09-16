#!/usr/bin/env bash

# Hello! Welcome to my bootstrap script
#
# How to use:
# > bash <(curl -s https://raw.githubusercontent.com/cyclic-software/aws-cloudshell-init/main/bootstrap.sh)
# > ...something something
# > profit!

mkdir -p ~/.config
cd ~/.config
git clone https://github.com/cyclic-software/aws-cloudshell-init.git

# if [ ! -f /etc/profile.d/aws-cloudshell-init.sh ]; do
    # cp aws-cloudshell-init/init/aws-cloudshell-init.sh /etc/profile.d/aws-cloudshell-init.sh
    # . /etc/profile.d/aws-cloudshell-init.sh
# done

echo '# Added by: cyclic-software/aws-cloudshell-init/main/bootstrap.sh\n. aws-cloudshell-init.sh' \
    >> ~/.bash_profile
