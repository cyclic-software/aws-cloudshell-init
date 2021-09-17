#!/usr/bin/env bash

set -exou pipefail

pushd $HOME/.config/aws-cloudshell-init
git pull
popd
