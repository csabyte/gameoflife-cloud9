#!/bin/bash -e

cd $(dirname $0)

if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then
  source "$HOME/.rvm/scripts/rvm"
elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then
  source "/usr/local/rvm/scripts/rvm"
else
  printf "ERROR: An RVM installation was not found.\n"
fi

if ! which rvm; then
    echo "rvm is needed to run tests!"
    exit 1
fi

rvm use --create @gameoflife

if ! which rspec; then
    bundle
fi

rspec
