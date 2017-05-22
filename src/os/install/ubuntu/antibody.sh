#!/bin/sh

curl -sL https://git.io/antibody | sh -s

antibody bundle < "$DOTFILES/src/os/install/ubuntu/antibody-bundles.txt" > $HOME/.antibody_plugins.sh
antibody update
