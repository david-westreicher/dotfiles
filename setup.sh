#!/bin/bash

echo "setup [START]"
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [ -f ~/.xombrero.conf ];
then
    rm ~/.xombrero.conf
fi
ln -s $DIR/xombrero.conf ~/.xombrero.conf

if [ -f ~/.i3/config ];
then
    rm ~/.i3/config
fi
mkdir ~/.i3 -p
ln -s $DIR/i3.conf ~/.i3/config

if [ -f ~/.config/lilyterm/default.conf ];
then
    rm ~/.config/lilyterm/default.conf 
fi
mkdir ~/.config/lilyterm -p
ln -s $DIR/lilyterm.conf ~/.config/lilyterm/default.conf

echo "setup [STOP]"
