#!/bin/sh
if which brew >/dev/null 2>&1; then
  brew install getantibody/tap/antibody || brew upgrade antibody
else
  curl -sL https://git.io/antibody | sh -s
fi
antibody bundle < "$DOTFILES/src/os/install/macos/antibody-bundles.txt" > $HOME/.antibody_plugins.sh
antibody update
