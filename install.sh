#!/bin/sh
ln -sf `pwd`/.vimrc $HOME/

if ( grep -q "exe 'q'" `pwd`/bundle/winmanager/plugin/winmanager.vim); then
    exit 0
else
    sed -i '/s:StartWindowsManager()/a \
    exe '\''q'\''' `pwd`/bundle/winmanager/plugin/winmanager.vim
fi
