#!/bin/bash

cd $(dirname $0)

if ! which inotifywait >/dev/null; then
    echo "Installing inotify-tools..."
    sudo apt-get install inotify-tools
fi

while [ true ]; do
    ./test.sh
    inotifywait -e modify -s -r .
done
