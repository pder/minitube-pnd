#!/bin/bash

# copy default mplayer2 config settings
cp -n -r mplayer2-default .mplayer2

export HOME=$(pwd)
export PATH=$(pwd)/bin:$PATH
export LD_LIBRARY_PATH=$(pwd)/lib
export QT_PLUGIN_PATH=$(pwd)/plugins

minitube "$@"
